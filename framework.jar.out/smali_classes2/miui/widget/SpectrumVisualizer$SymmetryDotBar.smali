.class Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lmiui/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lmiui/widget/SpectrumVisualizer;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v4, v4, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v7, v2, v3

    .line 424
    .local v7, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v7, v2, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v3, v2, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v4, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v5, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v6, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v8, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v9, v2, v7

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v11, v2, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 436
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v3, v3, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v3, v3, p2

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v15, v2, v3

    .line 437
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    if-le v15, v2, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v15, v2, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 440
    :cond_1
    if-lez v15, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v9, v2, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v11, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v12, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v13, v2, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v14, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v0, v2, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v17}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 451
    :cond_2
    return-void
.end method
