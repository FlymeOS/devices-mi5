.class Lcom/android/settings/ip;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/iq;


# instance fields
.field private final BH:Lcom/android/settings/il;

.field final synthetic Br:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/ip;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 368
    new-instance v0, Lcom/android/settings/il;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings/il;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/iq;Lcom/android/settings/id;)V

    iput-object v0, p0, Lcom/android/settings/ip;->BH:Lcom/android/settings/il;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/ip;->load()V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/id;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ip;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public ak(I)Lcom/android/settings/io;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/ip;->BH:Lcom/android/settings/il;

    invoke-static {v0}, Lcom/android/settings/il;->a(Lcom/android/settings/il;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/io;

    return-object v0
.end method

.method public b(Lcom/android/settings/io;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings/ip;->BH:Lcom/android/settings/il;

    invoke-virtual {v0, p1}, Lcom/android/settings/il;->b(Lcom/android/settings/io;)V

    .line 374
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/settings/ip;->BH:Lcom/android/settings/il;

    invoke-static {v0}, Lcom/android/settings/il;->a(Lcom/android/settings/il;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/settings/ip;->ak(I)Lcom/android/settings/io;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 394
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings/ip;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/ip;->ak(I)Lcom/android/settings/io;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ip;->BH:Lcom/android/settings/il;

    invoke-static {v2}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/io;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 377
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->f(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/android/settings/im;

    iget-object v1, p0, Lcom/android/settings/ip;->BH:Lcom/android/settings/il;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/settings/im;-><init>(Lcom/android/settings/il;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/im;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    return-void
.end method
