.class public Lcom/xiaomi/push/service/S;
.super Ljava/lang/Object;
.source "RC4Cryption.java"


# static fields
.field private static beq:I


# instance fields
.field private aWY:[B

.field private ber:I

.field private bes:I

.field private bet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x8

    sput v0, Lcom/xiaomi/push/service/S;->beq:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, -0x29a

    iput v0, p0, Lcom/xiaomi/push/service/S;->bet:I

    .line 19
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/S;->bes:I

    iput v0, p0, Lcom/xiaomi/push/service/S;->ber:I

    .line 21
    return-void
.end method

.method private A([B)V
    .locals 2

    .prologue
    .line 60
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/push/service/S;->a(I[BZ)V

    .line 61
    return-void
.end method

.method public static P(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/g/a;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 200
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v4, v0, [B

    move v0, v1

    .line 201
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 202
    aget-byte v5, v2, v0

    aput-byte v5, v4, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    array-length v0, v2

    const/16 v5, 0x5f

    aput-byte v5, v4, v0

    .line 205
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 206
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aget-byte v5, v3, v1

    aput-byte v5, v4, v0

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    :cond_1
    return-object v4
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 188
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/S;->c([B[B)[B

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/a;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I[BZ)V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v0, 0x0

    .line 32
    array-length v2, p2

    move v1, v0

    .line 34
    :goto_0
    if-ge v1, v5, :cond_0

    .line 35
    iget-object v3, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput v0, p0, Lcom/xiaomi/push/service/S;->bes:I

    .line 37
    iput v0, p0, Lcom/xiaomi/push/service/S;->ber:I

    :goto_1
    iget v1, p0, Lcom/xiaomi/push/service/S;->ber:I

    if-ge v1, p1, :cond_1

    .line 38
    iget v1, p0, Lcom/xiaomi/push/service/S;->bes:I

    iget-object v3, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v4, p0, Lcom/xiaomi/push/service/S;->ber:I

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/xiaomi/push/service/S;->ber:I

    rem-int/2addr v3, v2

    aget-byte v3, p2, v3

    invoke-static {v3}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v3

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/xiaomi/push/service/S;->bes:I

    .line 39
    iget-object v1, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v3, p0, Lcom/xiaomi/push/service/S;->ber:I

    iget v4, p0, Lcom/xiaomi/push/service/S;->bes:I

    invoke-static {v1, v3, v4}, Lcom/xiaomi/push/service/S;->h([BII)V

    .line 37
    iget v1, p0, Lcom/xiaomi/push/service/S;->ber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/S;->ber:I

    goto :goto_1

    .line 41
    :cond_1
    if-eq p1, v5, :cond_2

    .line 42
    iget v1, p0, Lcom/xiaomi/push/service/S;->bes:I

    iget-object v3, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    aget-byte v3, v3, p1

    invoke-static {v3}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v3

    add-int/2addr v1, v3

    rem-int v2, p1, v2

    aget-byte v2, p2, v2

    invoke-static {v2}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/xiaomi/push/service/S;->bet:I

    .line 44
    :cond_2
    if-eqz p3, :cond_5

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "S_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :goto_2
    if-gt v0, p1, :cond_3

    .line 48
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_3
    const-string v0, "   j_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/push/service/S;->bes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "   j_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/push/service/S;->bet:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "   S_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[j_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v3, p0, Lcom/xiaomi/push/service/S;->bes:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "   S_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[j_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v3, p0, Lcom/xiaomi/push/service/S;->bet:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    if-eqz v0, :cond_4

    .line 54
    const-string v0, "   S[1]!=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 57
    :cond_5
    return-void
.end method

.method public static b(B)I
    .locals 0

    .prologue
    .line 110
    if-ltz p0, :cond_0

    .line 113
    :goto_0
    return p0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 193
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/g/a;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 194
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/S;->c([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([B[B)[B
    .locals 5

    .prologue
    .line 176
    array-length v0, p1

    new-array v1, v0, [B

    .line 177
    new-instance v2, Lcom/xiaomi/push/service/S;

    invoke-direct {v2}, Lcom/xiaomi/push/service/S;-><init>()V

    .line 178
    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/S;->A([B)V

    .line 179
    invoke-direct {v2}, Lcom/xiaomi/push/service/S;->init()V

    .line 180
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 181
    aget-byte v3, p1, v0

    invoke-virtual {v2}, Lcom/xiaomi/push/service/S;->IG()B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-object v1
.end method

.method private static h([BII)V
    .locals 2

    .prologue
    .line 103
    aget-byte v0, p0, p1

    .line 104
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 105
    aput-byte v0, p0, p2

    .line 106
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/S;->bes:I

    iput v0, p0, Lcom/xiaomi/push/service/S;->ber:I

    .line 65
    return-void
.end method


# virtual methods
.method IG()B
    .locals 4

    .prologue
    .line 68
    iget v0, p0, Lcom/xiaomi/push/service/S;->ber:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/S;->ber:I

    .line 69
    iget v0, p0, Lcom/xiaomi/push/service/S;->bes:I

    iget-object v1, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v2, p0, Lcom/xiaomi/push/service/S;->ber:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/S;->bes:I

    .line 70
    iget-object v0, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v1, p0, Lcom/xiaomi/push/service/S;->ber:I

    iget v2, p0, Lcom/xiaomi/push/service/S;->bes:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/S;->h([BII)V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget-object v1, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v2, p0, Lcom/xiaomi/push/service/S;->ber:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/push/service/S;->aWY:[B

    iget v3, p0, Lcom/xiaomi/push/service/S;->bes:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/S;->b(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    .line 72
    return v0
.end method
