package cmd

import (
	"fmt"
	"os"

	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:   "natd",
	Short: "A NAT health check HTTP service.",
	Long:  "A NAT health check HTTP service for determining the health of an instance acting as a NAT gateway.",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("hello, nat")
	},
}

// Execute entrypoint for the program.
func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
