.class Lcom/android/vendorsettings/ae;
.super Ljava/lang/Object;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic cv:Lcom/android/vendorsettings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/BasePreferenceFragment;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/vendorsettings/ae;->cv:Lcom/android/vendorsettings/BasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 107
    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/vendorsettings/ae;->cv:Lcom/android/vendorsettings/BasePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ae;->cv:Lcom/android/vendorsettings/BasePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    .line 113
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/ae;->cv:Lcom/android/vendorsettings/BasePreferenceFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/BasePreferenceFragment;->ct:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/ae;->cv:Lcom/android/vendorsettings/BasePreferenceFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/BasePreferenceFragment;->ct:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 117
    iget-object v2, p0, Lcom/android/vendorsettings/ae;->cv:Lcom/android/vendorsettings/BasePreferenceFragment;

    invoke-static {v2, v0, v1}, Lcom/android/vendorsettings/BasePreferenceFragment;->a(Lcom/android/vendorsettings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
