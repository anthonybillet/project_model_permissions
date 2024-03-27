connection: "sample_bigquery_connection"

label: "Z) Testing Project Level Isolation"

include: "/views/*.view.lkml"

explore: order_items {
  #testing adding a change - user 1
  join: users {
    type: left_outer
    sql_on: ${users.id} = ${order_items.user_id} ;;
    relationship: many_to_one
  }

}
