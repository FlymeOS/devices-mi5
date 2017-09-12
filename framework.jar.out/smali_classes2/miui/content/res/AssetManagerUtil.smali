.class public Lmiui/content/res/AssetManagerUtil;
.super Ljava/lang/Object;
.source "AssetManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookieName(Landroid/content/res/AssetManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "cookie"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
