.class public Lcom/xiaomi/smack/packet/c;
.super Ljava/lang/Object;
.source "IQ.java"


# static fields
.field public static final bip:Lcom/xiaomi/smack/packet/c;

.field public static final biq:Lcom/xiaomi/smack/packet/c;

.field public static final bir:Lcom/xiaomi/smack/packet/c;

.field public static final bis:Lcom/xiaomi/smack/packet/c;

.field public static final bit:Lcom/xiaomi/smack/packet/c;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/xiaomi/smack/packet/c;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/c;->bip:Lcom/xiaomi/smack/packet/c;

    .line 257
    new-instance v0, Lcom/xiaomi/smack/packet/c;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/c;->biq:Lcom/xiaomi/smack/packet/c;

    .line 259
    new-instance v0, Lcom/xiaomi/smack/packet/c;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/c;->bir:Lcom/xiaomi/smack/packet/c;

    .line 261
    new-instance v0, Lcom/xiaomi/smack/packet/c;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/c;->bis:Lcom/xiaomi/smack/packet/c;

    .line 263
    new-instance v0, Lcom/xiaomi/smack/packet/c;

    const-string v1, "command"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/c;->bit:Lcom/xiaomi/smack/packet/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/xiaomi/smack/packet/c;->value:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public static eu(Ljava/lang/String;)Lcom/xiaomi/smack/packet/c;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 274
    if-nez p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 278
    sget-object v2, Lcom/xiaomi/smack/packet/c;->bip:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    sget-object v0, Lcom/xiaomi/smack/packet/c;->bip:Lcom/xiaomi/smack/packet/c;

    goto :goto_0

    .line 280
    :cond_2
    sget-object v2, Lcom/xiaomi/smack/packet/c;->biq:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    sget-object v0, Lcom/xiaomi/smack/packet/c;->biq:Lcom/xiaomi/smack/packet/c;

    goto :goto_0

    .line 282
    :cond_3
    sget-object v2, Lcom/xiaomi/smack/packet/c;->bis:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    sget-object v0, Lcom/xiaomi/smack/packet/c;->bis:Lcom/xiaomi/smack/packet/c;

    goto :goto_0

    .line 284
    :cond_4
    sget-object v2, Lcom/xiaomi/smack/packet/c;->bir:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    sget-object v0, Lcom/xiaomi/smack/packet/c;->bir:Lcom/xiaomi/smack/packet/c;

    goto :goto_0

    .line 286
    :cond_5
    sget-object v2, Lcom/xiaomi/smack/packet/c;->bit:Lcom/xiaomi/smack/packet/c;

    invoke-virtual {v2}, Lcom/xiaomi/smack/packet/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    sget-object v0, Lcom/xiaomi/smack/packet/c;->bit:Lcom/xiaomi/smack/packet/c;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/xiaomi/smack/packet/c;->value:Ljava/lang/String;

    return-object v0
.end method
