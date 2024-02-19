#include <clang-c/Index.h>
#include <stdio.h>
#include <string.h>
// Hàm callback để in toàn bộ chi tiết về hàm trong một tệp cụ thể
enum CXChildVisitResult visitFunctionDetails(CXCursor cursor, CXCursor parent, CXClientData clientData) {
        // Lọc ra chỉ các hàm
        if (clang_getCursorKind(cursor) == CXCursor_FunctionDecl) {
	    CXString functionName = clang_getCursorSpelling(cursor);
	    if (strcmp(clang_getCString(functionName), clientData) == 0) {
            
	    FILE *outputFile = fopen(clang_getCString(functionName), "w");
            if (outputFile == NULL) {
                fprintf(stderr, "Error opening output file.\n");
                return CXChildVisit_Break; // Dừng duyệt nếu có lỗi mở tệp
            }

	    fseek(outputFile, 0, SEEK_SET);
            ftruncate(fileno(outputFile), 0);
	        
            fprintf(outputFile, "Function Name: %s\n", clang_getCString(functionName));

            // In thông tin chi tiết về cursor
            CXString cursorInfo = clang_getCursorDisplayName(cursor);
            fprintf(outputFile, "Cursor Info: %s\n", clang_getCString(cursorInfo));

            // In thông tin chi tiết về kiểu trả về
            CXType returnType = clang_getCursorResultType(cursor);
            CXString returnTypeStr = clang_getTypeSpelling(returnType);
            fprintf(outputFile, "Return Type: %s\n", clang_getCString(returnTypeStr));

            // In thông tin chi tiết về tham số
            unsigned numArgs = clang_Cursor_getNumArguments(cursor);
            fprintf(outputFile, "Number of Arguments: %u\n", numArgs);

            for (unsigned i = 0; i < numArgs; ++i) {
                CXCursor argCursor = clang_Cursor_getArgument(cursor, i);
		CXString argName = clang_getCursorSpelling(argCursor);
                CXString argType = clang_getTypeSpelling(clang_getCursorType(argCursor));
                fprintf(outputFile, "Argument %u Name=%s Type: %s\n", i + 1, clang_getCString(argName), clang_getCString(argType));
                clang_disposeString(argType);
            }

            fprintf(outputFile, "\n");

            // Bạn có thể in thêm các thông tin khác về hàm tại đây
	    
	    //Đóng tệp
            fclose(outputFile);

            clang_disposeString(functionName);
            clang_disposeString(cursorInfo);
            clang_disposeString(returnTypeStr);
	    
        }
    }

    return CXChildVisit_Continue;
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        fprintf(stderr, "Usage: %s <file.c> <functionName>\n", argv[0]);
        return 1;
    }

    // Lấy thông tin từ dòng lệnh
    const char* fileName = argv[1];
    const char* functionName = argv[2];

    // Khởi tạo libclang
    CXIndex index = clang_createIndex(0, 0);

    // Phân tích translation unit từ mã nguồn C
    CXTranslationUnit translationUnit = clang_parseTranslationUnit(
        index, fileName, NULL, 0, NULL, 0, CXTranslationUnit_None
    );

    if (translationUnit == NULL) {
        fprintf(stderr, "Error parsing translation unit.\n");
        return 1;
    }

    // Lấy con trỏ root cursor
    CXCursor rootCursor = clang_getTranslationUnitCursor(translationUnit);

    // Gọi hàm callback để in toàn bộ chi tiết về hàm trong tệp cụ thể
    clang_visitChildren(rootCursor, visitFunctionDetails, (CXClientData)functionName);

    // Giải phóng bộ nhớ
    clang_disposeTranslationUnit(translationUnit);
    clang_disposeIndex(index);

    return 0;
}

