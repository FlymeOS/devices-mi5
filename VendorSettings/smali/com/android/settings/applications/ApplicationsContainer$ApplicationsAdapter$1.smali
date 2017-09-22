.class Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ApplicationsContainer.java"


# instance fields
.field final synthetic HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;->HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;->HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;->HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 571
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 572
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 573
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;->HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    .line 581
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;->HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 582
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter$1;->HR:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 583
    return-void
.end method
