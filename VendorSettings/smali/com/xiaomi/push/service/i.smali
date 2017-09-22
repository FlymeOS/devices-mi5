.class final Lcom/xiaomi/push/service/i;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# instance fields
.field private bdd:I

.field private bde:[Lcom/xiaomi/push/service/j;

.field private bdf:I

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/i;->bdd:I

    .line 129
    iget v0, p0, Lcom/xiaomi/push/service/i;->bdd:I

    new-array v0, v0, [Lcom/xiaomi/push/service/j;

    iput-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    .line 131
    iput v1, p0, Lcom/xiaomi/push/service/i;->size:I

    .line 133
    iput v1, p0, Lcom/xiaomi/push/service/i;->bdf:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/e;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/xiaomi/push/service/i;-><init>()V

    return-void
.end method

.method private Ir()V
    .locals 7

    .prologue
    .line 199
    iget v0, p0, Lcom/xiaomi/push/service/i;->size:I

    add-int/lit8 v1, v0, -0x1

    .line 200
    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/xiaomi/push/service/j;->when:J

    iget-object v4, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/xiaomi/push/service/j;->when:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v2, v2, v1

    .line 205
    iget-object v3, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget-object v4, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 206
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aput-object v2, v1, v0

    .line 210
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    move v6, v1

    move v1, v0

    move v0, v6

    .line 211
    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/i;Lcom/xiaomi/push/service/j;)I
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/i;->c(Lcom/xiaomi/push/service/j;)I

    move-result v0

    return v0
.end method

.method private c(Lcom/xiaomi/push/service/j;)I
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 267
    :goto_1
    return v0

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private ff(I)V
    .locals 6

    .prologue
    .line 215
    .line 216
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 218
    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    if-lez v1, :cond_0

    .line 220
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-wide v2, v1, Lcom/xiaomi/push/service/j;->when:J

    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/xiaomi/push/service/j;->when:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 222
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v0, v0, p1

    iget-wide v2, v0, Lcom/xiaomi/push/service/j;->when:J

    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v0, v0, v1

    iget-wide v4, v0, Lcom/xiaomi/push/service/j;->when:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 239
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v0, v0, p1

    .line 232
    iget-object v2, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget-object v3, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v3, v3, v1

    aput-object v3, v2, p1

    .line 233
    iget-object v2, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aput-object v0, v2, v1

    .line 237
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    .line 238
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public Iq()Lcom/xiaomi/push/service/j;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(ILcom/xiaomi/push/service/g;)V
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/xiaomi/push/service/j;->bdg:Lcom/xiaomi/push/service/g;

    if-ne v1, p2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/j;->cancel()Z

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/i;->deleteIfCancelled()V

    .line 187
    return-void
.end method

.method public b(Lcom/xiaomi/push/service/j;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ne v0, v1, :cond_0

    .line 145
    iget v0, p0, Lcom/xiaomi/push/service/i;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/push/service/j;

    .line 146
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget v2, p0, Lcom/xiaomi/push/service/i;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iput-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/push/service/i;->size:I

    aput-object p1, v0, v1

    .line 150
    invoke-direct {p0}, Lcom/xiaomi/push/service/i;->Ir()V

    .line 151
    return-void
.end method

.method public delete(I)V
    .locals 3

    .prologue
    .line 191
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget v2, p0, Lcom/xiaomi/push/service/i;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaomi/push/service/i;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 193
    iget-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 194
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/i;->ff(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/xiaomi/push/service/j;->cancelled:Z

    if-eqz v1, :cond_0

    .line 253
    iget v1, p0, Lcom/xiaomi/push/service/i;->bdf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/i;->bdf:I

    .line 254
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/i;->delete(I)V

    .line 256
    add-int/lit8 v0, v0, -0x1

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method public fd(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 154
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge v0, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/xiaomi/push/service/j;->type:I

    if-ne v2, p1, :cond_1

    .line 156
    const/4 v1, 0x1

    .line 159
    :cond_0
    return v1

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fe(I)V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/push/service/i;->size:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/xiaomi/push/service/j;->type:I

    if-ne v1, p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/j;->cancel()Z

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/i;->deleteIfCancelled()V

    .line 169
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/xiaomi/push/service/i;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/xiaomi/push/service/i;->bdd:I

    new-array v0, v0, [Lcom/xiaomi/push/service/j;

    iput-object v0, p0, Lcom/xiaomi/push/service/i;->bde:[Lcom/xiaomi/push/service/j;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/i;->size:I

    .line 244
    return-void
.end method
