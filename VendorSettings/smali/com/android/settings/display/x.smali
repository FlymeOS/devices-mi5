.class public Lcom/android/vendorsettings/display/x;
.super Lcom/android/vendorsettings/ag;
.source "PageLayoutStatusController.java"


# static fields
.field private static lF:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    .line 24
    sget-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/ag;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 20
    return-void
.end method


# virtual methods
.method public af()V
    .locals 4

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    sget-object v2, Lcom/android/vendorsettings/display/x;->lF:Landroid/util/SparseArray;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/display/x;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/display/x;->cw:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/vendorsettings/display/x;->cw:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/vendorsettings/display/x;->cx:Lcom/android/vendorsettings/ah;

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/vendorsettings/display/x;->cx:Lcom/android/vendorsettings/ah;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/android/vendorsettings/ah;->l(Ljava/lang/String;)V

    .line 50
    :cond_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
