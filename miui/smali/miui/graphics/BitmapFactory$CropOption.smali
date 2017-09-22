.class public Lmiui/graphics/BitmapFactory$CropOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput p1, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 698
    iput p2, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 699
    iput p3, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 700
    iput p4, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 701
    return-void
.end method

.method public constructor <init>(Lmiui/graphics/BitmapFactory$CropOption;)V
    .locals 1

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 705
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 706
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 707
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 708
    iget-object v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 709
    return-void
.end method
