#include <iostream>
#include <nlohmann/json.hpp>
#include <fstream>

using json = nlohmann::json;
using namespace std;

int main()
{
	// создаём пустой JSON-объект
	json j;
	// добавляем строку, которая будет храниться как std::string
	j["name"] = "Test";
	// добавляем пустой вложенный объект
	j["nothing"] = nullptr;
	// число внутри вложенного объекта
	j["answer"]["everything"] = 10;
	// добавляем массив строк (будет храниться как std::vector<std::string>)
	// обратите внимание - используются списки инициализации
	j["companies"] = { "Info", "TM" };
	// добавляем ещё один объект - на этот раз используем список инициализации с парами "ключ"-"значение"
	j["user"] = { {"name", "solo"}, {"active", true} };
	std::cout << j << std::endl;
	std::cout << std::setw(4) << j << std::endl;
	j["answer"]["everything"] = 2;
	std::cout << j.at("name") << std::endl;
	std::cout << j["answer"]["everything"] << std::endl;
	auto user = j["user"]["name"];
	std::cout << "User: " << user << std::endl;
	for (auto element : j) {
		std::cout << element << '\n';
	}
	j["user"] = { {"name", "polo"}, {"active", false} };
	std::ofstream o("polo.json");
	o << std::setw(4) << j << std::endl;
	std::ifstream i("polo.json");
	json polo;
	i >> polo;
	std::cout << std::setw(4) << polo["user"] << std::endl;
}