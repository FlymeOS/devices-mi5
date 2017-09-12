.class public Lmiui/telephony/TelephonyConstants;
.super Ljava/lang/Object;
.source "TelephonyConstants.java"


# static fields
.field public static final ACTION_DEVICE_ID_READY:Ljava/lang/String; = "android.intent.action.DEVICE_ID_READY"

.field public static final ACTION_IMS_REGISTED:Ljava/lang/String; = "android.intent.action.ACTION_IMS_REGISTED"

.field public static final ACTION_SPEECH_CODEC_IS_HD:Ljava/lang/String; = "android.intent.action.ACTION_SPEECH_CODEC_IS_HD"

.field public static final EXTRA_ADD_PARTICIPANT_KEY:Ljava/lang/String; = "add_participant"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final EXTRA_DIAL_CONFERENCE_URI:Ljava/lang/String; = "org.codeaurora.extra.DIAL_CONFERENCE_URI"

.field public static final EXTRA_IMS_REGISTED_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_IS_HD:Ljava/lang/String; = "is_hd"

.field public static final EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field public static final PROPERTY_DEVICE_ID:Ljava/lang/String; = "ro.ril.miui.imei"

.field public static final PROPERTY_VERBOSE_LOG:Ljava/lang/String; = "ril.miui.log.v"

.field public static final STATE_AUDIO_ONLY:I = 0x0

.field public static final STATE_BIDIRECTIONAL:I = 0x3

.field public static final STATE_RX_ENABLED:I = 0x2

.field public static final STATE_TX_ENABLED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "gsm.apn.sim.operator.numeric"

    sput-object v0, Lmiui/telephony/TelephonyConstants;->PROPERTY_APN_SIM_OPERATOR_NUMERIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
