package main

import (
	"fmt"
	"os"

	"github.com/spf13/cobra"
	commands "github.com/sreeharikmarar/gke-node-scaler/pkg"
)

var rootCmd = &cobra.Command{Use: "gke-node-scaler"}

func main() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}

func init() {
	rootCmd.AddCommand(commands.NewListCmd())
}
