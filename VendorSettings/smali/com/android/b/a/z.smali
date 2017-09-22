.class public Lcom/android/b/a/z;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field private FB:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/z;->mLastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public e(Landroid/content/res/Resources;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    iget-object v2, p0, Lcom/android/b/a/z;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    .line 29
    iget v2, p0, Lcom/android/b/a/z;->FB:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v2, v4, :cond_2

    move v2, v1

    .line 30
    :goto_0
    if-nez v2, :cond_0

    and-int/lit16 v2, v3, 0x304

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/b/a/z;->FB:I

    move v0, v1

    .line 35
    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 29
    goto :goto_0
.end method
