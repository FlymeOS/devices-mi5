.class public abstract Lcom/xiaomi/push/service/R;
.super Ljava/lang/Object;
.source "PushServiceConstants.java"


# static fields
.field public static bep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "com.xiaomi.xmsf.push.UNINSTALL"

    sput-object v0, Lcom/xiaomi/push/service/R;->bep:Ljava/lang/String;

    return-void
.end method
