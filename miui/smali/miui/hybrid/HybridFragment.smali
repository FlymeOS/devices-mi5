.class public Lmiui/hybrid/HybridFragment;
.super Lmiui/app/Fragment;
.source "SourceFile"


# instance fields
.field private xS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/hybrid/HybridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    return-void
.end method

.method private bX()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    :cond_1
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->destroy()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 156
    return-void
.end method


# virtual methods
.method protected getConfigResId()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->hybrid_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 208
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->bY()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lmiui/app/Fragment;->onDestroy()V

    .line 197
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 198
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->bY()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onDestroy()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lmiui/hybrid/HybridFragment;->bX()V

    .line 202
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lmiui/app/Fragment;->onPause()V

    .line 179
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 180
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->bY()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onPause()V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    .line 170
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 171
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->bY()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onResume()V

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lmiui/app/Fragment;->onStart()V

    .line 161
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 162
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->bY()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onStart()V

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lmiui/app/Fragment;->onStop()V

    .line 188
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    .line 189
    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->bY()Lcom/miui/internal/hybrid/HybridManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->onStop()V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/miui/internal/R$id;->hybrid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    instance-of v1, v0, Lmiui/hybrid/HybridView;

    if-eqz v1, :cond_2

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p2, :cond_0

    .line 40
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_0
    if-nez v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_1
    check-cast v0, Lmiui/hybrid/HybridView;

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getConfigResId()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    .line 50
    :cond_2
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;I)V

    .line 90
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method protected final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view being registered is not a hybrid view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    check-cast p1, Lmiui/hybrid/HybridView;

    .line 126
    new-instance v0, Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p0}, Lmiui/hybrid/HybridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V

    .line 127
    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridView;->setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 128
    iget-object v1, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    .line 130
    return-void
.end method

.method protected final unregisterHybridView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    instance-of v0, p1, Lmiui/hybrid/HybridView;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view being unregistered is not a hybrid view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/HybridFragment;->xS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method
