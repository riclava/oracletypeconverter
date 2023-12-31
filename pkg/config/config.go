package config

import (
	"fmt"
	"strings"

	"gopkg.in/yaml.v3"
)

type Config struct {
	Host         string `yaml:"host"`
	Port         int    `yaml:"port"`
	Username     string `yaml:"username"`
	Password     string `yaml:"password"`
	DbName       string `yaml:"dbname"`
	PackageName  string `yaml:"package_name"`
	ImportSql    bool   `yaml:"import_sql"`
	ModelPath    string `yaml:"model_path"`
	TemplateName string `yaml:"template_name"`

	UpperCaseJson       bool `yaml:"upper_case_json"`
	IgnoreUnsupportType bool `yaml:"ignore_unsupport_type"`
}

func NewConfig(confString string, strictMode bool) (*Config, error) {
	// start with defaults
	conf := &Config{}

	if confString != "" {
		decoder := yaml.NewDecoder(strings.NewReader(confString))
		decoder.KnownFields(strictMode)
		if err := decoder.Decode(conf); err != nil {
			return nil, fmt.Errorf("could not parse config: %v", err)
		}
	}

	return conf, nil
}
