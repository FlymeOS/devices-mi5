.class public Lcom/android/gallery3d/ui/GLId;
.super Ljava/lang/Object;
.source "GLId.java"


# static fields
.field private static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    return-void
.end method

.method public static glDeleteBuffers(I[II)V
    .locals 0
    .param p0, "n"    # I
    .param p1, "buffers"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 49
    return-void
.end method

.method public static glDeleteFrameBuffers(I[II)V
    .locals 0
    .param p0, "n"    # I
    .param p1, "buffers"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 53
    return-void
.end method

.method public static glDeleteTextures(I[II)V
    .locals 0
    .param p0, "n"    # I
    .param p1, "textures"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 45
    return-void
.end method

.method public static declared-synchronized glGenFrameBuffers(I[II)V
    .locals 5
    .param p0, "n"    # I
    .param p1, "buffers"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 38
    const-class v2, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v2

    move v0, p0

    .end local p0    # "n":I
    .local v0, "n":I
    :goto_0
    add-int/lit8 p0, v0, -0x1

    .end local v0    # "n":I
    .restart local p0    # "n":I
    if-lez v0, :cond_0

    .line 39
    add-int v1, p2, p0

    :try_start_0
    sget v3, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    .end local p0    # "n":I
    .restart local v0    # "n":I
    goto :goto_0

    .line 41
    .end local v0    # "n":I
    .restart local p0    # "n":I
    :cond_0
    monitor-exit v2

    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized glGenTextures(I[II)V
    .locals 5
    .param p0, "n"    # I
    .param p1, "textures"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 26
    const-class v2, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v2

    move v0, p0

    .end local p0    # "n":I
    .local v0, "n":I
    :goto_0
    add-int/lit8 p0, v0, -0x1

    .end local v0    # "n":I
    .restart local p0    # "n":I
    if-lez v0, :cond_0

    .line 27
    add-int v1, p2, p0

    :try_start_0
    sget v3, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    .end local p0    # "n":I
    .restart local v0    # "n":I
    goto :goto_0

    .line 29
    .end local v0    # "n":I
    .restart local p0    # "n":I
    :cond_0
    monitor-exit v2

    return-void

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
