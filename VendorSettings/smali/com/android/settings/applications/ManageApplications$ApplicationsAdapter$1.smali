.class Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# instance fields
.field final synthetic Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;->Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;->Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;->Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->d(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 738
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 739
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 740
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 741
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;->Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->HM:Ljava/lang/CharSequence;

    .line 748
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;->Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 749
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter$1;->Kk:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 750
    return-void
.end method
