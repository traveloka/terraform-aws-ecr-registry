package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// Test main module creation.
func TestDemoExample(t *testing.T) {
	terraformOptions := &terraform.Options{
		TerraformDir: "../examples/simple",
	}

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	outputs := terraform.OutputAll(t, terraformOptions)
	assert.True(t, strings.Contains(fmt.Sprint(outputs["name"]), "bei"))
	assert.True(t, strings.Contains(fmt.Sprint(outputs["arn"]), "bei"))
	assert.True(t, strings.Contains(fmt.Sprint(outputs["repository_url"]), "bei"))
}
