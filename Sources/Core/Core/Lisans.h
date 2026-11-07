#include "curl/curl.h" //your directory may be different
using namespace std;
#pragma comment(lib, "curl/libcurl_a.lib")
//#pragma comment(lib, "D:/lib/libcurl_a.lib")
#pragma comment(lib, "iphlpapi.lib")
#include "sha256.h"
#include <stdint.h>
typedef std::basic_string<TCHAR> tstring;
#define WIN32_LEAN_AND_MEAN        
#include <windows.h>      
#include <intrin.h>       
#include <iphlpapi.h>     
uint16_t ma1;
uint16_t ma2;	
string data;

extern "C" { FILE __iob_func[3] = { *stdin,*stdout,*stderr }; }

std::vector<std::string> getExplode(const std::string delimiter, const std::string ender, const std::string str) {

	std::vector<std::string> results;

	std::vector<std::string> arr = explode(delimiter, str);
	for (size_t i = 1; i<arr.size(); i++) {
		std::vector<std::string> arrend = explode(ender, arr[i]);
		results.push_back(arrend[0]);
	}
	return results;
}

static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
	((std::string*)userp)->append((char*)contents, size * nmemb);
	return size * nmemb;
}

string getData(string url){
	CURL *curl;
	CURLcode res;
	std::string readBuffer;

	curl = curl_easy_init();
	if (curl) {
		curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
		res = curl_easy_perform(curl);
		curl_easy_cleanup(curl);
	}

    return readBuffer;
}

char *DownloadBytes(const char *szUrl)
{
	HINTERNET hOpen = NULL, hFile = NULL;
	DWORD dataSize = 0, dwBytesRead = 0;
	hOpen = InternetOpenA("MyAgent", NULL, NULL, NULL, NULL);
	char buffer[2000];

	if (!hOpen)
		return NULL;

	hFile = InternetOpenUrlA(hOpen, szUrl, NULL, NULL, INTERNET_FLAG_RELOAD | INTERNET_FLAG_DONT_CACHE, NULL);

	if (!hFile)
	{
		InternetCloseHandle(hOpen);
		return NULL;
	}

	if (InternetReadFile(hFile, buffer, _countof(buffer), &dwBytesRead))
		buffer[dwBytesRead] = '\0';
	else
		return NULL;

	InternetCloseHandle(hFile);
	InternetCloseHandle(hOpen);
	char *ret = buffer;
	return ret;
}
int RemoteLisansCheck()
{
	return 1;

}
int LisansCheck()
{
	myl = 1;
	return 1;
}
