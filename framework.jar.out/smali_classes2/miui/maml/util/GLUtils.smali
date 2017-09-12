.class public Lmiui/maml/util/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBuffer([B)Ljava/nio/Buffer;
    .locals 2
    .param p0, "arr"    # [B

    .prologue
    .line 61
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    return-object v0
.end method

.method public static buildBuffer([C)Ljava/nio/Buffer;
    .locals 3
    .param p0, "arr"    # [C

    .prologue
    .line 50
    array-length v2, p0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 51
    .local v1, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 54
    .local v0, "buffer":Ljava/nio/CharBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    return-object v0
.end method

.method public static buildBuffer([D)Ljava/nio/Buffer;
    .locals 3
    .param p0, "arr"    # [D

    .prologue
    .line 80
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    .local v1, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 84
    .local v0, "buffer":Ljava/nio/DoubleBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-object v0
.end method

.method public static buildBuffer([F)Ljava/nio/Buffer;
    .locals 3
    .param p0, "arr"    # [F

    .prologue
    .line 28
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 29
    .local v1, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 32
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 33
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    return-object v0
.end method

.method public static buildBuffer([I)Ljava/nio/Buffer;
    .locals 3
    .param p0, "arr"    # [I

    .prologue
    .line 17
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 18
    .local v1, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/IntBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 22
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    return-object v0
.end method

.method public static buildBuffer([J)Ljava/nio/Buffer;
    .locals 3
    .param p0, "arr"    # [J

    .prologue
    .line 69
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    .local v1, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 73
    .local v0, "buffer":Ljava/nio/LongBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    return-object v0
.end method

.method public static buildBuffer([S)Ljava/nio/Buffer;
    .locals 3
    .param p0, "arr"    # [S

    .prologue
    .line 39
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    .local v1, "qbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 43
    .local v0, "buffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    return-object v0
.end method
