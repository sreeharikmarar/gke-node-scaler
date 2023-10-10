package commands

import "github.com/spf13/cobra"

func NewListCmd() *cobra.Command {
	var listCmd = &cobra.Command{
		Use:   "list",
		Short: "List GKE clusters and nodes",
		Run:   ListGKENodes,
	}

	return listCmd
}
