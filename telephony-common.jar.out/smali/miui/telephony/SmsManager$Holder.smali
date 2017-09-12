.class Lmiui/telephony/SmsManager$Holder;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field private static sDefaultInstance:Lmiui/telephony/SmsManager;

.field private static sInstance:[Lmiui/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lmiui/telephony/SmsManager;

    sput-object v1, Lmiui/telephony/SmsManager$Holder;->sInstance:[Lmiui/telephony/SmsManager;

    .line 15
    new-instance v1, Lmiui/telephony/SmsManager;

    invoke-direct {v1, v3}, Lmiui/telephony/SmsManager;-><init>(Lmiui/telephony/SmsManager$1;)V

    sput-object v1, Lmiui/telephony/SmsManager$Holder;->sDefaultInstance:Lmiui/telephony/SmsManager;

    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmiui/telephony/SmsManager$Holder;->sInstance:[Lmiui/telephony/SmsManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 19
    sget-object v1, Lmiui/telephony/SmsManager$Holder;->sInstance:[Lmiui/telephony/SmsManager;

    new-instance v2, Lmiui/telephony/SmsManager;

    invoke-direct {v2, v0, v3}, Lmiui/telephony/SmsManager;-><init>(ILmiui/telephony/SmsManager$1;)V

    aput-object v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lmiui/telephony/SmsManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lmiui/telephony/SmsManager$Holder;->sDefaultInstance:Lmiui/telephony/SmsManager;

    return-object v0
.end method

.method static synthetic access$300()[Lmiui/telephony/SmsManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lmiui/telephony/SmsManager$Holder;->sInstance:[Lmiui/telephony/SmsManager;

    return-object v0
.end method
