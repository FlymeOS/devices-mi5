.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawJPEGAttribute.java"


# instance fields
.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mData:[B

.field public mDate:J

.field public mEffectIndex:I

.field public mExif:Lcom/android/gallery3d/exif/ExifInterface;

.field public mFinalImage:Z

.field public mHeight:I

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mShootRotation:F

.field public mTitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public constructor <init>([BIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "previewW"    # I
    .param p3, "previewH"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "effectIndex"    # I
    .param p7, "attribute"    # Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .param p8, "loc"    # Landroid/location/Location;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "date"    # J
    .param p12, "orientation"    # I
    .param p13, "jpegOrientation"    # I
    .param p14, "shootRotation"    # F
    .param p15, "mirror"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 37
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    .line 38
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    .line 39
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 40
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 41
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 42
    iput-wide p10, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    .line 43
    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    .line 44
    iput-object p7, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 45
    iput-object p8, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    .line 46
    iput-object p9, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    .line 47
    iput p12, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    .line 48
    iput p13, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 49
    move/from16 v0, p14

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    .line 50
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    .line 51
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTarget:I

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method
