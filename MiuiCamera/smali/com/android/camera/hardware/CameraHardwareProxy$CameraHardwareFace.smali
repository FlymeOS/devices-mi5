.class public Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardwareProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraHardwareFace"
.end annotation


# instance fields
.field public ageFemale:F

.field public ageMale:F

.field public beautyscore:F

.field public blinkDetected:I

.field public faceRecognised:I

.field public faceType:I

.field public gender:F

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public prob:F

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I

.field public t2tStop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->id:I

    .line 235
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->leftEye:Landroid/graphics/Point;

    .line 236
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rightEye:Landroid/graphics/Point;

    .line 237
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->mouth:Landroid/graphics/Point;

    .line 242
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->smileDegree:I

    .line 243
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->smileScore:I

    .line 244
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->blinkDetected:I

    .line 245
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceRecognised:I

    .line 246
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    .line 247
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->t2tStop:I

    .line 251
    return-void
.end method

.method public static convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 4
    .param p0, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 254
    array-length v2, p0

    new-array v1, v2, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 255
    .local v1, "qcomFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 256
    new-instance v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {v2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;-><init>()V

    aput-object v2, v1, v0

    .line 257
    aget-object v2, v1, v0

    aget-object v3, p0, v0

    invoke-static {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->copyFace(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;Landroid/hardware/Camera$Face;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-object v1
.end method

.method private static copyFace(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;Landroid/hardware/Camera$Face;)V
    .locals 8
    .param p0, "cameraface"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .param p1, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 265
    .local v2, "fs":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 267
    .local v1, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 268
    .local v5, "localField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 271
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 270
    :catch_1
    move-exception v6

    goto :goto_1

    .line 269
    :catch_2
    move-exception v6

    goto :goto_1
.end method
