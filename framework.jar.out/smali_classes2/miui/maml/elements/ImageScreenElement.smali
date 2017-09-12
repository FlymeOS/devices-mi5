.class public Lmiui/maml/elements/ImageScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/BitmapProvider$IBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageScreenElement$1;,
        Lmiui/maml/elements/ImageScreenElement$pair;,
        Lmiui/maml/elements/ImageScreenElement$Mask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field protected mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mBmpSizeWidthVar:Lmiui/maml/data/IndexedVariable;

.field protected mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpSrcH:Lmiui/maml/data/Expression;

.field private mExpSrcW:Lmiui/maml/data/Expression;

.field private mExpSrcX:Lmiui/maml/data/Expression;

.field private mExpSrcY:Lmiui/maml/data/Expression;

.field private mHasBitmapVar:Lmiui/maml/data/IndexedVariable;

.field private mHasSrcRect:Z

.field private mLoadAsync:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ImageScreenElement$Mask;",
            ">;"
        }
    .end annotation
.end field

.field private mMeshHeight:I

.field private mMeshVerts:[F

.field private mMeshWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPendingBlur:Z

.field private mRawBlurRadius:I

.field private mRetainWhenInvisible:Z

.field private mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:Lmiui/maml/animation/SourcesAnimation;

.field private mSrc:Ljava/lang/String;

.field private mSrcFormatter:Lmiui/maml/util/TextFormatter;

.field private mSrcH:I

.field private mSrcIdExpression:Lmiui/maml/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 84
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 142
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 143
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 12
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 146
    if-nez p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .line 150
    .local v0, "vars":Lmiui/maml/data/Variables;
    const-string v2, "src"

    const-string v3, "srcFormat"

    const-string v4, "srcParas"

    const-string v5, "srcExp"

    const-string v6, "srcFormatExp"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    .line 151
    const-string v1, "srcid"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    .line 154
    const-string v1, "antiAlias"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 155
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 156
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 158
    const-string v1, "srcX"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    .line 159
    const-string v1, "srcY"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    .line 160
    const-string v1, "srcW"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    .line 161
    const-string v1, "srcH"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    .line 162
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 163
    iput-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 164
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 167
    :cond_1
    const-string v1, "blur"

    invoke-virtual {p0, p1, v1, v11}, Lmiui/maml/elements/ImageScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 169
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->loadMesh(Lorg/w3c/dom/Element;)V

    .line 171
    const-string/jumbo v1, "xfermodeNum"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    .line 172
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_2

    .line 173
    const-string/jumbo v1, "xfermode"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 174
    .local v7, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 178
    .end local v7    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_2
    const-string v1, "useVirtualScreen"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 179
    .local v9, "useVirtualScreen":Z
    const-string v1, "srcType"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "srcType":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v8, "VirtualScreen"

    .end local v8    # "srcType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v8}, Lmiui/maml/elements/ImageScreenElement;->setSrcType(Ljava/lang/String;)V

    .line 182
    const-string v1, "loadAsync"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 183
    const-string v1, "retainWhenInvisible"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 185
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v1, :cond_4

    .line 186
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bmp_width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/data/IndexedVariable;

    .line 187
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bmp_height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/data/IndexedVariable;

    .line 188
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "has_bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/data/IndexedVariable;

    .line 190
    :cond_4
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    .end local v9    # "useVirtualScreen":Z
    :cond_5
    move v1, v11

    .line 154
    goto/16 :goto_1
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 231
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 234
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 236
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 237
    .local v1, "images":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 238
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/elements/ImageScreenElement$Mask;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, p0, v2, v5}, Lmiui/maml/elements/ImageScreenElement$Mask;-><init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V
    .locals 45
    .param p1, "bufferCanvas"    # Landroid/graphics/Canvas;
    .param p2, "mask"    # Lmiui/maml/elements/ImageScreenElement$Mask;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 475
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 476
    .local v39, "rawMask":Landroid/graphics/Bitmap;
    if-nez v39, :cond_0

    .line 531
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 480
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getX()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v34, v0

    .line 481
    .local v34, "maskX":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getY()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v36, v0

    .line 482
    .local v36, "maskY":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v32

    .line 483
    .local v32, "maskAngle":F
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getRotation()F

    move-result v2

    .line 485
    .local v2, "angle":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    .line 486
    move/from16 v0, p3

    int-to-double v4, v0

    sub-double v34, v34, v4

    .line 487
    move/from16 v0, p4

    int-to-double v4, v0

    sub-double v36, v36, v4

    .line 514
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getX()F

    move-result v3

    float-to-double v4, v3

    sub-double v34, v34, v4

    .line 515
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getY()F

    move-result v3

    float-to-double v4, v3

    sub-double v36, v36, v4

    .line 517
    .end local v2    # "angle":F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v3

    float-to-double v4, v3

    add-double v4, v4, v34

    move/from16 v0, p3

    int-to-double v6, v0

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v4

    float-to-double v4, v4

    add-double v4, v4, v36

    move/from16 v0, p4

    int-to-double v6, v0

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 519
    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v33, v0

    .line 520
    .local v33, "mx":I
    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v38, v0

    .line 521
    .local v38, "my":I
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v44

    .line 522
    .local v44, "width":I
    if-gez v44, :cond_2

    .line 523
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v44

    .line 524
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 525
    .local v25, "height":I
    if-gez v25, :cond_3

    .line 526
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 527
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v4, v33, p3

    add-int v5, v38, p4

    add-int v6, v33, p3

    add-int v6, v6, v44

    add-int v7, v38, p4

    add-int v7, v7, v25

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 529
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 489
    .end local v25    # "height":I
    .end local v33    # "mx":I
    .end local v38    # "my":I
    .end local v44    # "width":I
    .restart local v2    # "angle":F
    :cond_4
    sub-float v32, v32, v2

    .line 490
    float-to-double v4, v2

    const-wide v6, 0x400921fb54442c46L    # 3.1415926535897

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v8, v4, v6

    .line 491
    .local v8, "angleA":D
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotX()F

    move-result v19

    .line 492
    .local v19, "cx":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotY()F

    move-result v24

    .line 493
    .local v24, "cy":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    if-nez v3, :cond_5

    .line 494
    new-instance v3, Lmiui/maml/elements/ImageScreenElement$pair;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/maml/elements/ImageScreenElement$pair;-><init>(Lmiui/maml/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    .line 496
    :cond_5
    move/from16 v0, v19

    float-to-double v4, v0

    move/from16 v0, v24

    float-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 498
    move/from16 v0, p3

    int-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double v40, v4, v6

    .line 499
    .local v40, "rx":D
    move/from16 v0, p4

    int-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double v42, v4, v6

    .line 502
    .local v42, "ry":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v3

    float-to-double v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v3

    float-to-double v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x400921fb54442c46L    # 3.1415926535897

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v16, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v18, v0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-double v4, v3

    add-double v34, v34, v4

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-double v4, v3

    add-double v36, v36, v4

    .line 506
    sub-double v28, v34, v40

    .line 507
    .local v28, "dx":D
    sub-double v30, v36, v42

    .line 508
    .local v30, "dy":D
    mul-double v4, v28, v28

    mul-double v6, v30, v30

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 509
    .local v26, "dm":D
    div-double v4, v28, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    .line 510
    .local v20, "angleB":D
    const-wide/16 v4, 0x0

    cmpl-double v3, v30, v4

    if-lez v3, :cond_6

    add-double v22, v8, v20

    .line 511
    .local v22, "angleC":D
    :goto_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v34, v26, v4

    .line 512
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v36, v26, v4

    goto/16 :goto_1

    .line 510
    .end local v22    # "angleC":D
    :cond_6
    const-wide v4, 0x400921fb54442c46L    # 3.1415926535897

    add-double/2addr v4, v8

    sub-double v22, v4, v20

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V
    .locals 13
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "angle"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p7, "pr":Lmiui/maml/elements/ImageScreenElement$pair;, "Lmiui/maml/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v8, p1, p1

    mul-double v10, p3, p3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 462
    .local v6, "cm":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_0

    .line 463
    div-double v8, p1, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 464
    .local v2, "angle1":D
    const-wide v8, 0x400921fb54442c46L    # 3.1415926535897

    sub-double/2addr v8, v2

    sub-double v4, v8, p5

    .line 465
    .local v4, "angle2":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 466
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    sub-double v8, p3, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 471
    .end local v2    # "angle1":D
    .end local v4    # "angle2":D
    :goto_0
    return-void

    .line 468
    :cond_0
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 469
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v6}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 336
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    if-eqz v6, :cond_4

    .line 341
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v6, v8, :cond_3

    .line 344
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 347
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    invoke-static {v7, v6, v8}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 351
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v6, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getAlpha()I

    move-result v15

    .line 356
    .local v15, "alpha":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v26

    .line 358
    .local v26, "oldDensity":I
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getWidth()F

    move-result v27

    .line 361
    .local v27, "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getHeight()F

    move-result v20

    .line 362
    .local v20, "height":F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v17

    .line 363
    .local v17, "aniWidth":F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v16

    .line 365
    .local v16, "aniHeight":F
    const/4 v6, 0x0

    cmpl-float v6, v27, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v20, v6

    if-eqz v6, :cond_0

    .line 368
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Lmiui/maml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v6

    float-to-int v0, v6

    move/from16 v28, v0

    .line 369
    .local v28, "x":I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lmiui/maml/elements/ImageScreenElement;->getTop(FF)F

    move-result v6

    float-to-int v0, v6

    move/from16 v29, v0

    .line 370
    .local v29, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c

    .line 373
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v6

    if-eqz v6, :cond_7

    .line 374
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmiui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v25

    .line 375
    .local v25, "np":Landroid/graphics/NinePatch;
    if-eqz v25, :cond_6

    .line 376
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v28

    int-to-float v8, v0

    add-float v8, v8, v27

    float-to-int v8, v8

    move/from16 v0, v29

    int-to-float v9, v0

    add-float v9, v9, v20

    float-to-int v9, v9

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 418
    .end local v25    # "np":Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .line 379
    .restart local v25    # "np":Landroid/graphics/NinePatch;
    :cond_6
    const-string v6, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 383
    .end local v25    # "np":Landroid/graphics/NinePatch;
    :cond_7
    const/4 v6, 0x0

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_8

    const/4 v6, 0x0

    cmpl-float v6, v16, v6

    if-gtz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_a

    .line 384
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v28

    int-to-float v8, v0

    add-float v8, v8, v27

    float-to-int v8, v8

    move/from16 v0, v29

    int-to-float v9, v0

    add-float v9, v9, v20

    float-to-int v9, v9

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_9

    .line 386
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v11, v12

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 388
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 389
    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v6, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v6, :cond_b

    .line 390
    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 392
    :cond_b
    move/from16 v0, v28

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 396
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxWidth()F

    move-result v24

    .line 397
    .local v24, "maxWidth":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxHeight()F

    move-result v23

    .line 398
    .local v23, "maxHeight":F
    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 399
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 400
    move/from16 v0, v24

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v19, v0

    .line 401
    .local v19, "bufferWidth":I
    move/from16 v0, v23

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v18, v0

    .line 402
    .local v18, "bufferHeight":I
    move/from16 v0, v28

    int-to-float v9, v0

    move/from16 v0, v29

    int-to-float v10, v0

    add-int v6, v28, v19

    int-to-float v11, v6

    add-int v6, v29, v18

    int-to-float v12, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    const/16 v14, 0x1f

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 403
    const/4 v6, 0x0

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_d

    const/4 v6, 0x0

    cmpl-float v6, v16, v6

    if-gtz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_f

    .line 404
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v27

    float-to-int v8, v0

    add-int v8, v8, v28

    move/from16 v0, v20

    float-to-int v9, v0

    add-int v9, v9, v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 405
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_e

    .line 406
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v11, v12

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 408
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 413
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 414
    .local v22, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V

    goto :goto_3

    .line 410
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_f
    move/from16 v0, v28

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 416
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method protected doTick(J)V
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    .line 535
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 536
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v3}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 541
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 542
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 543
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->doTick(J)V

    goto :goto_2

    .line 539
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 547
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_3

    .line 548
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-static {v3}, Lmiui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 549
    .local v2, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 552
    .end local v2    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    iget-boolean v3, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v3, :cond_4

    .line 553
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 554
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 555
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 556
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 559
    :cond_4
    iget-boolean v3, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 564
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 566
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 570
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 571
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 572
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->finish()V

    goto :goto_0

    .line 575
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 576
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 577
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 578
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method protected getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 3
    .param p1, "async"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 437
    :goto_0
    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 434
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 437
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 2

    .prologue
    .line 269
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 309
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 310
    .local v0, "h":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 315
    .end local v0    # "h":F
    :goto_0
    return v0

    .line 312
    .restart local v0    # "h":F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 313
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    int-to-float v0, v1

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 6

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, "src":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v3}, Lmiui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 326
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v0, v4

    .line 328
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .end local v0    # "id":J
    :cond_0
    return-object v2

    .line 323
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    .line 299
    .local v0, "w":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 304
    .end local v0    # "w":F
    :goto_0
    return v0

    .line 301
    .restart local v0    # "w":F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 302
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    int-to-float v0, v1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public getX()F
    .locals 4

    .prologue
    .line 280
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    .line 281
    .local v0, "x":F
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v1}, Lmiui/maml/animation/SourcesAnimation;->getX()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    add-float/2addr v0, v1

    .line 284
    :cond_0
    return v0
.end method

.method public getY()F
    .locals 4

    .prologue
    .line 289
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    .line 290
    .local v0, "y":F
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v1}, Lmiui/maml/animation/SourcesAnimation;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    add-float/2addr v0, v1

    .line 293
    :cond_0
    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 246
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 250
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 252
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->init()V

    goto :goto_1

    .line 246
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 259
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    iget-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 263
    :cond_3
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 264
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v2, :cond_4

    .line 265
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 266
    :cond_4
    return-void
.end method

.method protected loadMesh(Lorg/w3c/dom/Element;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v8, 0x0

    .line 194
    const-string v5, "mesh"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "meshStr":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, "comma":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 198
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 199
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-eqz v5, :cond_0

    .line 205
    const-string v5, "meshVertsArr"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "meshArr":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "arr":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v5, v0, [F

    if-eqz v5, :cond_1

    .line 208
    check-cast v0, [F

    .end local v0    # "arr":Ljava/lang/Object;
    check-cast v0, [F

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshVerts:[F

    .line 215
    .end local v3    # "meshArr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "ImageScreenElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mesh format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "arr":Ljava/lang/Object;
    .restart local v3    # "meshArr":Ljava/lang/String;
    :cond_1
    iput v8, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    iput v8, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 211
    const-string v5, "ImageScreenElement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid meshVertsArr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  undifined or not float[] type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 219
    const-string v0, "SourcesAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lmiui/maml/animation/SourcesAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .prologue
    .line 619
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onSetAnimBefore()V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 621
    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    .line 625
    instance-of v0, p1, Lmiui/maml/animation/SourcesAnimation;

    if-eqz v0, :cond_0

    .line 626
    check-cast p1, Lmiui/maml/animation/SourcesAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 630
    :goto_0
    return-void

    .line 628
    .restart local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 667
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 668
    if-eqz p1, :cond_1

    .line 669
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 674
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 582
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 584
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 586
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->pause()V

    goto :goto_0

    .line 589
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 647
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 648
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 650
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->pauseAnim(J)V

    goto :goto_0

    .line 653
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 634
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 635
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 636
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    .line 637
    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ImageScreenElement$Mask;->playAnim(JJJZZ)V

    goto :goto_0

    .line 640
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 641
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 643
    :cond_1
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 604
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 605
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 607
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->reset(J)V

    goto :goto_0

    .line 610
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 613
    :cond_1
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v2, :cond_2

    .line 614
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 615
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 593
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 595
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 597
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->resume()V

    goto :goto_0

    .line 600
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 657
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 658
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 660
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->resumeAnim(J)V

    goto :goto_0

    .line 663
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 424
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 425
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 426
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->requestUpdate()V

    .line 428
    :cond_0
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/maml/util/TextFormatter;->setText(Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method public setSrcId(D)V
    .locals 3
    .param p1, "srcId"    # D

    .prologue
    .line 447
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method public setSrcType(Ljava/lang/String;)V
    .locals 1
    .param p1, "srcType"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, p1}, Lmiui/maml/elements/BitmapProvider;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    .line 228
    return-void
.end method

.method protected updateBitmap(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    .line 681
    .local v0, "versionedBmp":Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-static {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->equals(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 683
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 685
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 686
    return-void
.end method

.method protected updateBitmapVars()V
    .locals 4

    .prologue
    .line 689
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 693
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 694
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/data/IndexedVariable;

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 696
    :cond_0
    return-void

    .line 694
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
