.class public Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolderProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 271
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    .line 287
    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 288
    .local v0, "dot":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 289
    move-object v1, p1

    .line 294
    :goto_1
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    .line 295
    .local v2, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v3, :cond_0

    .line 296
    check-cast v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    .end local v2    # "se":Lmiui/maml/elements/ScreenElement;
    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    goto :goto_0

    .line 291
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 292
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    goto :goto_1
.end method
