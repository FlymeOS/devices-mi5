.class Lmiui/telephony/TelephonyManager$Holder;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lmiui/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
