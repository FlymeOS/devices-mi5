.class public Lcom/xiaomi/smack/s;
.super Ljava/lang/Object;
.source "XMBinder.java"


# static fields
.field public static final bic:Lcom/xiaomi/smack/s;

.field public static final bid:Lcom/xiaomi/smack/s;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/xiaomi/smack/s;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/s;->bic:Lcom/xiaomi/smack/s;

    .line 243
    new-instance v0, Lcom/xiaomi/smack/s;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/s;->bid:Lcom/xiaomi/smack/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/xiaomi/smack/s;->value:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static es(Ljava/lang/String;)Lcom/xiaomi/smack/s;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    if-nez p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 257
    sget-object v2, Lcom/xiaomi/smack/s;->bid:Lcom/xiaomi/smack/s;

    invoke-virtual {v2}, Lcom/xiaomi/smack/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    sget-object v0, Lcom/xiaomi/smack/s;->bid:Lcom/xiaomi/smack/s;

    goto :goto_0

    .line 259
    :cond_2
    sget-object v2, Lcom/xiaomi/smack/s;->bic:Lcom/xiaomi/smack/s;

    invoke-virtual {v2}, Lcom/xiaomi/smack/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v0, Lcom/xiaomi/smack/s;->bic:Lcom/xiaomi/smack/s;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xiaomi/smack/s;->value:Ljava/lang/String;

    return-object v0
.end method
