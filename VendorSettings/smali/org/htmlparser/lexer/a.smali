.class public Lorg/htmlparser/lexer/a;
.super Ljava/io/InputStream;
.source "Stream.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public bto:I

.field public btp:I

.field public btq:I

.field protected btr:I

.field public volatile mBuffer:[B

.field protected volatile mIn:Ljava/io/InputStream;

.field public volatile mLevel:I

.field protected mMark:I

.field protected mOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/a;-><init>(Ljava/io/InputStream;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    iput v0, p0, Lorg/htmlparser/lexer/a;->bto:I

    .line 47
    iput v0, p0, Lorg/htmlparser/lexer/a;->btp:I

    .line 53
    iput v0, p0, Lorg/htmlparser/lexer/a;->btq:I

    .line 113
    iput-object p1, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    .line 115
    iput v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    .line 116
    iput v0, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    .line 117
    if-gez p2, :cond_0

    move p2, v0

    :cond_0
    iput p2, p0, Lorg/htmlparser/lexer/a;->btr:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/a;->mMark:I

    .line 119
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected declared-synchronized cZ(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 144
    if-nez p1, :cond_1

    .line 146
    invoke-virtual {p0}, Lorg/htmlparser/lexer/a;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :goto_0
    monitor-exit p0

    return v1

    .line 148
    :cond_0
    :try_start_1
    iget v2, p0, Lorg/htmlparser/lexer/a;->btq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/htmlparser/lexer/a;->btq:I

    .line 152
    :cond_1
    iget v2, p0, Lorg/htmlparser/lexer/a;->btr:I

    if-nez v2, :cond_5

    .line 154
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    if-nez v2, :cond_3

    .line 156
    const/16 v2, 0x1000

    iget-object v3, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    .line 157
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    .line 166
    :goto_1
    array-length v3, v2

    iget v4, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    sub-int/2addr v3, v4

    .line 177
    :goto_2
    iget-object v4, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    iget v5, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 178
    const/4 v4, -0x1

    if-ne v4, v3, :cond_7

    .line 180
    iget-object v1, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    :cond_2
    :goto_3
    move v1, v0

    .line 202
    goto :goto_0

    .line 161
    :cond_3
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    sub-int/2addr v2, v3

    const/16 v3, 0x800

    if-ge v2, v3, :cond_4

    .line 162
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    goto :goto_1

    .line 164
    :cond_4
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    goto :goto_1

    .line 170
    :cond_5
    iget v2, p0, Lorg/htmlparser/lexer/a;->btr:I

    iget v3, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    sub-int v3, v2, v3

    .line 171
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    if-nez v2, :cond_6

    .line 172
    new-array v2, v3, [B

    iput-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    .line 173
    :cond_6
    iget-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    goto :goto_2

    .line 185
    :cond_7
    iget-object v0, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    if-eq v0, v2, :cond_8

    .line 187
    iget-object v0, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    invoke-static {v0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iput-object v2, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    .line 189
    iget v0, p0, Lorg/htmlparser/lexer/a;->btp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/a;->btp:I

    .line 191
    :cond_8
    iget v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    .line 192
    iget v0, p0, Lorg/htmlparser/lexer/a;->btr:I

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/a;->btr:I

    if-ne v0, v2, :cond_9

    .line 194
    iget-object v0, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    .line 198
    :cond_9
    iget v0, p0, Lorg/htmlparser/lexer/a;->bto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/a;->bto:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_3

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/a;->mIn:Ljava/io/InputStream;

    .line 301
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/a;->btr:I

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/a;->mMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    iput v0, p0, Lorg/htmlparser/lexer/a;->mMark:I

    .line 399
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 265
    iget v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/a;->cZ(Z)Z

    .line 267
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/a;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/htmlparser/lexer/a;->mBuffer:[B

    iget v1, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 272
    :goto_0
    return v0

    .line 270
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 352
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/a;->mMark:I

    if-eq v0, v1, :cond_0

    .line 353
    iget v0, p0, Lorg/htmlparser/lexer/a;->mMark:I

    iput v0, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/a;->mOffset:I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 221
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/a;->cZ(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 231
    :goto_0
    if-nez v0, :cond_0

    .line 232
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method
