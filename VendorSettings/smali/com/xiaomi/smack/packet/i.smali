.class public Lcom/xiaomi/smack/packet/i;
.super Ljava/lang/Object;
.source "XMPPError.java"


# static fields
.field public static final bjA:Lcom/xiaomi/smack/packet/i;

.field public static final bjB:Lcom/xiaomi/smack/packet/i;

.field public static final bjC:Lcom/xiaomi/smack/packet/i;

.field public static final bjD:Lcom/xiaomi/smack/packet/i;

.field public static final bjg:Lcom/xiaomi/smack/packet/i;

.field public static final bjh:Lcom/xiaomi/smack/packet/i;

.field public static final bji:Lcom/xiaomi/smack/packet/i;

.field public static final bjj:Lcom/xiaomi/smack/packet/i;

.field public static final bjk:Lcom/xiaomi/smack/packet/i;

.field public static final bjl:Lcom/xiaomi/smack/packet/i;

.field public static final bjm:Lcom/xiaomi/smack/packet/i;

.field public static final bjn:Lcom/xiaomi/smack/packet/i;

.field public static final bjo:Lcom/xiaomi/smack/packet/i;

.field public static final bjp:Lcom/xiaomi/smack/packet/i;

.field public static final bjq:Lcom/xiaomi/smack/packet/i;

.field public static final bjr:Lcom/xiaomi/smack/packet/i;

.field public static final bjs:Lcom/xiaomi/smack/packet/i;

.field public static final bjt:Lcom/xiaomi/smack/packet/i;

.field public static final bju:Lcom/xiaomi/smack/packet/i;

.field public static final bjv:Lcom/xiaomi/smack/packet/i;

.field public static final bjw:Lcom/xiaomi/smack/packet/i;

.field public static final bjx:Lcom/xiaomi/smack/packet/i;

.field public static final bjy:Lcom/xiaomi/smack/packet/i;

.field public static final bjz:Lcom/xiaomi/smack/packet/i;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "internal-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjg:Lcom/xiaomi/smack/packet/i;

    .line 461
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "forbidden"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjh:Lcom/xiaomi/smack/packet/i;

    .line 462
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "bad-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bji:Lcom/xiaomi/smack/packet/i;

    .line 463
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "conflict"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjj:Lcom/xiaomi/smack/packet/i;

    .line 464
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "feature-not-implemented"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjk:Lcom/xiaomi/smack/packet/i;

    .line 466
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjl:Lcom/xiaomi/smack/packet/i;

    .line 467
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "item-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjm:Lcom/xiaomi/smack/packet/i;

    .line 468
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "jid-malformed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjn:Lcom/xiaomi/smack/packet/i;

    .line 469
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-acceptable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjo:Lcom/xiaomi/smack/packet/i;

    .line 470
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-allowed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjp:Lcom/xiaomi/smack/packet/i;

    .line 471
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-authorized"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjq:Lcom/xiaomi/smack/packet/i;

    .line 472
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "payment-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjr:Lcom/xiaomi/smack/packet/i;

    .line 473
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "recipient-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjs:Lcom/xiaomi/smack/packet/i;

    .line 474
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "redirect"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjt:Lcom/xiaomi/smack/packet/i;

    .line 475
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "registration-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bju:Lcom/xiaomi/smack/packet/i;

    .line 476
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjv:Lcom/xiaomi/smack/packet/i;

    .line 477
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjw:Lcom/xiaomi/smack/packet/i;

    .line 479
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjx:Lcom/xiaomi/smack/packet/i;

    .line 480
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "resource-constraint"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjy:Lcom/xiaomi/smack/packet/i;

    .line 481
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "service-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjz:Lcom/xiaomi/smack/packet/i;

    .line 482
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "subscription-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjA:Lcom/xiaomi/smack/packet/i;

    .line 483
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "undefined-condition"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjB:Lcom/xiaomi/smack/packet/i;

    .line 484
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "unexpected-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjC:Lcom/xiaomi/smack/packet/i;

    .line 485
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "request-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->bjD:Lcom/xiaomi/smack/packet/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    .line 491
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/smack/packet/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    return-object v0
.end method
