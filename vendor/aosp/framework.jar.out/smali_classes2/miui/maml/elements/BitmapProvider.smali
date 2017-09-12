.class public abstract Lmiui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$1;,
        Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;,
        Lmiui/maml/elements/BitmapProvider$UriProvider;,
        Lmiui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;,
        Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;,
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/maml/elements/BitmapProvider$AppIconProvider;,
        Lmiui/maml/elements/BitmapProvider$IBitmapHolder;,
        Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 109
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 110
    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .locals 4
    .param p0, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v2, "ResourceImage"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    new-instance v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :cond_1
    const-string v2, "VirtualScreen"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    new-instance v1, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "ApplicationIcon"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    new-instance v1, Lmiui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v2, "FileSystem"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    new-instance v1, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 89
    :cond_4
    const-string v2, "Uri"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    new-instance v1, Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$UriProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 91
    :cond_5
    const-string v2, "BitmapHolder"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    new-instance v1, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 93
    :cond_6
    const-string v2, "BitmapVar"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    new-instance v1, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 97
    :cond_7
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    const-string v3, "BitmapProvider"

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    .line 99
    .local v0, "f":Lmiui/maml/ObjectFactory$BitmapProviderFactory;
    if-eqz v0, :cond_8

    .line 100
    invoke-virtual {v0, p0, p1}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    .line 101
    .local v1, "provider":Lmiui/maml/elements/BitmapProvider;
    if-nez v1, :cond_0

    .line 105
    .end local v1    # "provider":Lmiui/maml/elements/BitmapProvider;
    :cond_8
    new-instance v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v1, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 121
    return-void
.end method

.method public getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 114
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
