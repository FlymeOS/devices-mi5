.class Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lmiui/maml/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 246
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 263
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/maml/elements/VirtualScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/maml/elements/VirtualScreen;

    invoke-virtual {v0}, Lmiui/maml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 264
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 256
    .local v0, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v1, v0, Lmiui/maml/elements/VirtualScreen;

    if-eqz v1, :cond_0

    .line 257
    check-cast v0, Lmiui/maml/elements/VirtualScreen;

    .end local v0    # "se":Lmiui/maml/elements/ScreenElement;
    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/maml/elements/VirtualScreen;

    .line 259
    :cond_0
    return-void
.end method
