.class public final enum Lmiui/provider/CloudAppControll$TAG;
.super Ljava/lang/Enum;
.source "CloudAppControll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/CloudAppControll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/provider/CloudAppControll$TAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/provider/CloudAppControll$TAG;

.field public static final DEFAULT_ACCESS_LOCATION:I = 0x0

.field public static final DEFAULT_ACCURATE_ALARM_CLOCK:I = 0x0

.field public static final DEFAULT_AUTO_START:I = 0x0

.field public static final DEFAULT_CALL_INTERCEPT:I = 0x0

.field public static final DEFAULT_CALL_PHONE:I = 0x0

.field public static final DEFAULT_CAMERA:I = 0x0

.field public static final DEFAULT_COMPATIBLITY_FILTER:I = 0x0

.field public static final DEFAULT_FLOATING_WINDOW:I = 0x0

.field public static final DEFAULT_FONT:I = 0x0

.field public static final DEFAULT_INTERNET_CELLULAR:I = 0x0

.field public static final DEFAULT_INTERNET_WIFI:I = 0x0

.field public static final DEFAULT_NOTIFICATION_BLACKLIST:I = 0x0

.field public static final DEFAULT_READ_CALL_LOG:I = 0x0

.field public static final DEFAULT_READ_CONTACTS:I = 0x0

.field public static final DEFAULT_READ_PHONE_STATE:I = 0x0

.field public static final DEFAULT_READ_SMS:I = 0x0

.field public static final DEFAULT_RECORD_AUDIO:I = 0x0

.field public static final DEFAULT_SEND_SMS:I = 0x0

.field public static final DEFAULT_VIRUS_SCAN:I = 0x0

.field public static final MASK_ACCESS_LOCATION:J = 0xc000L

.field public static final MASK_ACCURATE_ALARM_CLOCK:J = 0xc0L

.field public static final MASK_AUTO_START:J = 0x3L

.field public static final MASK_CALL_INTERCEPT:J = 0x30000000L

.field public static final MASK_CALL_PHONE:J = 0x30000L

.field public static final MASK_CAMERA:J = 0xc00L

.field public static final MASK_COMPATIBLITY_FILTER:J = 0x300L

.field public static final MASK_FLOATING_WINDOW:J = 0x30L

.field public static final MASK_FONT:J = 0xc00000000L

.field public static final MASK_INTERNET_CELLULAR:J = 0x3000L

.field public static final MASK_INTERNET_WIFI:J = 0xc0000000L

.field public static final MASK_NOTIFICATION_BLACKLIST:J = 0xcL

.field public static final MASK_READ_CALL_LOG:J = 0xc000000L

.field public static final MASK_READ_CONTACTS:J = 0xc0000L

.field public static final MASK_READ_PHONE_STATE:J = 0x3000000L

.field public static final MASK_READ_SMS:J = 0x300000L

.field public static final MASK_RECORD_AUDIO:J = 0x300000000L

.field public static final MASK_SEND_SMS:J = 0xc00000L

.field public static final MASK_VIRUS_SCAN:J = 0xc000000000L

.field public static final OFFSET_ACCESS_LOCATION:I = 0xe

.field public static final OFFSET_ACCURATE_ALARM_CLOCK:I = 0x6

.field public static final OFFSET_AUTO_START:I = 0x0

.field public static final OFFSET_CALL_INTERCEPT:I = 0x1c

.field public static final OFFSET_CALL_PHONE:I = 0x10

.field public static final OFFSET_CAMERA:I = 0xa

.field public static final OFFSET_COMPATIBLITY_FILTER:I = 0x8

.field public static final OFFSET_FLOATING_WINDOW:I = 0x4

.field public static final OFFSET_FONT:I = 0x22

.field public static final OFFSET_INTERNET_CELLULAR:I = 0xc

.field public static final OFFSET_INTERNET_WIFI:I = 0x1e

.field public static final OFFSET_NOTIFICATION_BLACKLIST:I = 0x2

.field public static final OFFSET_READ_CALL_LOG:I = 0x1a

.field public static final OFFSET_READ_CONTACTS:I = 0x12

.field public static final OFFSET_READ_PHONE_STATE:I = 0x18

.field public static final OFFSET_READ_SMS:I = 0x14

.field public static final OFFSET_RECORD_AUDIO:I = 0x20

.field public static final OFFSET_SEND_SMS:I = 0x16

.field public static final OFFSET_VIRUS_SCAN:I = 0x26

.field public static final enum TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_COMPATIBLITY_FILTER:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_FLOATING_WINDOW:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

.field public static final enum TAG_VIRUS_SCAN:Lmiui/provider/CloudAppControll$TAG;


# instance fields
.field private mDefaultValue:I

.field private mMask:J

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 30
    new-instance v1, Lmiui/provider/CloudAppControll$TAG;

    const-string v2, "TAG_AUTO_START"

    const/4 v3, 0x0

    const-wide/16 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    .line 31
    new-instance v1, Lmiui/provider/CloudAppControll$TAG;

    const-string v2, "TAG_NOTIFICATION_BLACKLIST"

    const/4 v3, 0x1

    const-wide/16 v4, 0xc

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

    .line 33
    new-instance v1, Lmiui/provider/CloudAppControll$TAG;

    const-string v2, "TAG_FLOATING_WINDOW"

    const/4 v3, 0x2

    const-wide/16 v4, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_FLOATING_WINDOW:Lmiui/provider/CloudAppControll$TAG;

    .line 35
    new-instance v1, Lmiui/provider/CloudAppControll$TAG;

    const-string v2, "TAG_ACCURATE_ALARM_CLOCK"

    const/4 v3, 0x3

    const-wide/16 v4, 0xc0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    .line 37
    new-instance v1, Lmiui/provider/CloudAppControll$TAG;

    const-string v2, "TAG_COMPATIBLITY_FILTER"

    const/4 v3, 0x4

    const-wide/16 v4, 0x300

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_COMPATIBLITY_FILTER:Lmiui/provider/CloudAppControll$TAG;

    .line 39
    new-instance v1, Lmiui/provider/CloudAppControll$TAG;

    const-string v2, "TAG_VIRUS_SCAN"

    const/4 v3, 0x5

    const-wide v4, 0xc000000000L

    const/16 v6, 0x26

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lmiui/provider/CloudAppControll$TAG;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_VIRUS_SCAN:Lmiui/provider/CloudAppControll$TAG;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/provider/CloudAppControll$TAG;

    const/4 v1, 0x0

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_FLOATING_WINDOW:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_COMPATIBLITY_FILTER:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_VIRUS_SCAN:Lmiui/provider/CloudAppControll$TAG;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/CloudAppControll$TAG;->$VALUES:[Lmiui/provider/CloudAppControll$TAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJII)V
    .locals 1
    .param p3, "mask"    # J
    .param p5, "offset"    # I
    .param p6, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-wide p3, p0, Lmiui/provider/CloudAppControll$TAG;->mMask:J

    .line 43
    iput p5, p0, Lmiui/provider/CloudAppControll$TAG;->mOffset:I

    .line 44
    iput p6, p0, Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lmiui/provider/CloudAppControll$TAG;)I
    .locals 1
    .param p0, "x0"    # Lmiui/provider/CloudAppControll$TAG;

    .prologue
    .line 29
    iget v0, p0, Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/provider/CloudAppControll$TAG;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lmiui/provider/CloudAppControll$TAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/provider/CloudAppControll$TAG;

    return-object v0
.end method

.method public static values()[Lmiui/provider/CloudAppControll$TAG;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lmiui/provider/CloudAppControll$TAG;->$VALUES:[Lmiui/provider/CloudAppControll$TAG;

    invoke-virtual {v0}, [Lmiui/provider/CloudAppControll$TAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/provider/CloudAppControll$TAG;

    return-object v0
.end method


# virtual methods
.method public getAttribute(J)I
    .locals 5
    .param p1, "attributes"    # J

    .prologue
    .line 52
    iget-wide v2, p0, Lmiui/provider/CloudAppControll$TAG;->mMask:J

    and-long/2addr v2, p1

    iget v1, p0, Lmiui/provider/CloudAppControll$TAG;->mOffset:I

    shr-long/2addr v2, v1

    long-to-int v0, v2

    .line 53
    .local v0, "attribute":I
    return v0
.end method
