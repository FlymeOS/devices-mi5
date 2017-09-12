.class public Lcom/android/internal/telephony/SmsApplicationInjector;
.super Ljava/lang/Object;
.source "SmsApplicationInjector.java"


# static fields
.field private static final IGNORE_PACKAGE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.xiaomi.xmsf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.cloudservice"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.networkassistant"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.yellowpage"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.miui.securitycenter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SmsApplicationInjector;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 12
    sget-object v0, Lcom/android/internal/telephony/SmsApplicationInjector;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
