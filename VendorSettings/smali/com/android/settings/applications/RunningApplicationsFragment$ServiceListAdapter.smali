.class Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningApplicationsFragment.java"


# instance fields
.field final Hx:Lcom/android/settings/applications/RunningState;

.field Nh:Z

.field final synthetic Ni:Lcom/android/settings/applications/RunningApplicationsFragment;

.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V
    .locals 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Ni:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    .line 135
    invoke-static {p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->a(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->lo()V

    .line 137
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method au(Z)V
    .locals 1

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Nh:Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->aw(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->lo()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 214
    monitor-exit v2

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 217
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 218
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Ni:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-static {v4}, Lcom/android/settings/applications/RunningApplicationsFragment;->b(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Ni:Lcom/android/settings/applications/RunningApplicationsFragment;

    iget-object v1, v1, Lcom/android/settings/applications/RunningApplicationsFragment;->MS:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040123

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 205
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 193
    if-nez p2, :cond_0

    .line 194
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 198
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->c(Landroid/view/View;I)V

    .line 199
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->OL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lo()V
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Nh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->lA()Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 155
    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 160
    :cond_1
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->Hx:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->lz()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
