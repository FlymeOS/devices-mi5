.class public Lcom/xiaomi/channel/commonutils/f/b;
.super Ljava/lang/Object;
.source "Stats.java"


# static fields
.field private static final aYd:Lcom/xiaomi/channel/commonutils/f/a;


# instance fields
.field public annotation:Ljava/lang/String;

.field public key:I

.field public obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/xiaomi/channel/commonutils/f/a;

    invoke-direct {v0}, Lcom/xiaomi/channel/commonutils/f/a;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/f/b;->aYd:Lcom/xiaomi/channel/commonutils/f/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/xiaomi/channel/commonutils/f/b;->key:I

    .line 16
    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/f/b;->obj:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method static synthetic FD()Lcom/xiaomi/channel/commonutils/f/a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/xiaomi/channel/commonutils/f/b;->aYd:Lcom/xiaomi/channel/commonutils/f/a;

    return-object v0
.end method
