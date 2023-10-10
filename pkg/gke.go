package commands

import (
	"fmt"

	"github.com/spf13/cobra"
)

func ListGKENodes(cmd *cobra.Command, args []string) {
	fmt.Println("running list command")
}
