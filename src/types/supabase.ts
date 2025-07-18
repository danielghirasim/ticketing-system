export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  public: {
    Tables: {
      service_users: {
        Row: {
          created_at: string
          full_name: string | null
          id: number
          is_available: boolean | null
          job_title: string | null
          supabase_user: string
        }
        Insert: {
          created_at?: string
          full_name?: string | null
          id?: number
          is_available?: boolean | null
          job_title?: string | null
          supabase_user: string
        }
        Update: {
          created_at?: string
          full_name?: string | null
          id?: number
          is_available?: boolean | null
          job_title?: string | null
          supabase_user?: string
        }
        Relationships: []
      }
      tenant_permissions: {
        Row: {
          created_at: string
          id: number
          service_user: number
          tenant: string
        }
        Insert: {
          created_at?: string
          id?: number
          service_user: number
          tenant: string
        }
        Update: {
          created_at?: string
          id?: number
          service_user?: number
          tenant?: string
        }
        Relationships: [
          {
            foreignKeyName: "tenant_permissions_service_user_fkey"
            columns: ["service_user"]
            isOneToOne: false
            referencedRelation: "service_users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tenant_permissions_tenant_fkey"
            columns: ["tenant"]
            isOneToOne: false
            referencedRelation: "tenants"
            referencedColumns: ["id"]
          },
        ]
      }
      tenants: {
        Row: {
          created_at: string
          domain: string
          id: string
          name: string
        }
        Insert: {
          created_at?: string
          domain: string
          id: string
          name: string
        }
        Update: {
          created_at?: string
          domain?: string
          id?: string
          name?: string
        }
        Relationships: []
      }
      tickets: {
        Row: {
          assignee: number | null
          assignee_name: string | null
          author_name: string | null
          created_at: string
          created_by: number
          description: string
          id: number
          status: Database["public"]["Enums"]["ticket_status"]
          tenant: string
          title: string
        }
        Insert: {
          assignee?: number | null
          assignee_name?: string | null
          author_name?: string | null
          created_at?: string
          created_by: number
          description: string
          id?: number
          status?: Database["public"]["Enums"]["ticket_status"]
          tenant: string
          title: string
        }
        Update: {
          assignee?: number | null
          assignee_name?: string | null
          author_name?: string | null
          created_at?: string
          created_by?: number
          description?: string
          id?: number
          status?: Database["public"]["Enums"]["ticket_status"]
          tenant?: string
          title?: string
        }
        Relationships: [
          {
            foreignKeyName: "tickets_assignee_fkey"
            columns: ["assignee"]
            isOneToOne: false
            referencedRelation: "service_users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tickets_created_by_fkey"
            columns: ["created_by"]
            isOneToOne: false
            referencedRelation: "service_users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "tickets_tenant_fkey"
            columns: ["tenant"]
            isOneToOne: false
            referencedRelation: "tenants"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      custom_access_token_hook: {
        Args: { event: Json }
        Returns: Json
      }
      get_tenant_userlist: {
        Args: { tenant_id: string }
        Returns: Json
      }
    }
    Enums: {
      ticket_status:
        | "open"
        | "in_progress"
        | "canceled"
        | "information_missing"
        | "done"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DefaultSchema = Database[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof Database },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof (Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        Database[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends { schema: keyof Database }
  ? (Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      Database[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof Database },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends { schema: keyof Database }
  ? Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof Database },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends { schema: keyof Database }
  ? Database[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof Database },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends { schema: keyof Database }
  ? Database[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof Database },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof Database
  }
    ? keyof Database[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends { schema: keyof Database }
  ? Database[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      ticket_status: [
        "open",
        "in_progress",
        "canceled",
        "information_missing",
        "done",
      ],
    },
  },
} as const

