.class Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# instance fields
.field final Hx:Lcom/android/vendorsettings/applications/RunningState;

.field NC:Ljava/util/ArrayList;

.field final synthetic ND:Lcom/android/vendorsettings/applications/RunningProcessesView;

.field Nh:Z

.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/RunningProcessesView;Lcom/android/vendorsettings/applications/RunningState;)V
    .locals 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->ND:Lcom/android/vendorsettings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 235
    iput-object p2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    .line 236
    invoke-virtual {p1}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 238
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->lo()V

    .line 239
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method au(Z)V
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    if-eq v0, p1, :cond_0

    .line 243
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/applications/RunningState;->aw(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->lo()V

    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->ND:Lcom/android/vendorsettings/applications/RunningProcessesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/RunningProcessesView;->at(Z)V

    .line 248
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 324
    monitor-exit v2

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    .line 327
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 328
    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->ND:Lcom/android/vendorsettings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/vendorsettings/applications/RunningState;Lcom/android/vendorsettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->ND:Lcom/android/vendorsettings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningProcessesView;->MS:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
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
    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040123

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 315
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 303
    if-nez p2, :cond_0

    .line 304
    invoke-virtual {p0, p3}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 308
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->c(Landroid/view/View;I)V

    .line 309
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

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
    .line 298
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OL:Z

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
    .line 255
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lA()Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->NC:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 259
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->NC:Ljava/util/ArrayList;

    .line 260
    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    :cond_0
    :goto_1
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lz()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 264
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState;->Ot:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method lr()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    return v0
.end method
