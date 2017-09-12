.class public final Landroid/provider/MiuiSettings$AntiSpam;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AntiSpam"
.end annotation


# static fields
.field public static ACTION_SOURCE_CALL:Ljava/lang/String; = null

.field public static ACTION_SOURCE_OTHER:Ljava/lang/String; = null

.field public static ACTION_SOURCE_SMS:Ljava/lang/String; = null

.field public static final AGENT:I = 0x2

.field public static final AGENT_NUM_STATE:Ljava/lang/String; = "agent_num_state"

.field public static final ANTISPAM_MODE:Ljava/lang/String; = "antispam_mode_enable"

.field public static final ANTISPAM_PKG:Ljava/lang/String; = "com.miui.antispam"

.field public static final AUTO_TIMER_OF_QM_ENABLE:Ljava/lang/String; = "auto_timer_of_qm_enable"

.field public static final BACK_SOUND_MODE:Ljava/lang/String; = "back_sound_mode"

.field public static final BLACK_LIST_COUNT:Ljava/lang/String; = "black_list_count"

.field public static final BLACK_LIST_MODE:Ljava/lang/String; = "black_list_mode"

.field public static final CALL_ACT_OF_REPEATED:Ljava/lang/String; = "call_act_of_repeated"

.field private static final CALL_ACT_OF_VIP:Ljava/lang/String; = "call_act_of_vip"

.field public static final CALL_TRANSFER_NUM_STATE:Ljava/lang/String; = "call_transfer_num_state"

.field public static final CALL_WAIT:Ljava/lang/String; = "call_wait_mode_enable"

.field public static final CONTACT_CALL_MODE:Ljava/lang/String; = "contact_call_mode"

.field public static final CONTACT_SMS_MODE:Ljava/lang/String; = "contact_sms_mode"

.field public static final COURIER:I = 0x5

.field public static final COURIER_NUM_STATE:Ljava/lang/String; = "courier_num_state"

.field public static final DISABLE:I = 0x0

.field public static final DISPLAY_NOTE:Ljava/lang/String; = "diplay_note_mode_enable"

.field public static final EMPTY_CALL_MODE:Ljava/lang/String; = "empty_call_mode"

.field public static final ENABLE:I = 0x1

.field private static final END_TIME_OF_QM:Ljava/lang/String; = "end_time_of_qm"

.field public static final FIRST_ENTRY_WITH_NOTIFICATION:Ljava/lang/String; = "first_enter_with_notification"

.field public static final FRAUD:I = 0x1

.field public static final FRAUD_NUM_STATE:Ljava/lang/String; = "fraud_num_state"

.field public static final HARASS:I = 0xa

.field public static final HARASS_NUM_STATE:Ljava/lang/String; = "harass_num_state"

.field private static final HAS_NEW_ANTISPAM:Ljava/lang/String; = "has_new_antispam"

.field public static final HAS_NEW_BLOCK_SMS:Ljava/lang/String; = "has_new_block_sms"

.field public static final IS_BLACKLIST_NOTIFICATION:I = 0x0

.field public static final MARK_GUIDE_AGENT:Ljava/lang/String; = "mark_guide_agent"

.field public static final MARK_GUIDE_COURIER:Ljava/lang/String; = "mark_guide_courier"

.field public static final MARK_GUIDE_FRAUD:Ljava/lang/String; = "mark_guide_fraud"

.field public static final MARK_GUIDE_HARASS:Ljava/lang/String; = "mark_guide_harass"

.field public static final MARK_GUIDE_IS_SET:Ljava/lang/String; = "mark_guide_is_set"

.field public static final MARK_GUIDE_SELL:Ljava/lang/String; = "mark_guide_sell"

.field public static final MARK_GUIDE_TYPE:Ljava/lang/String; = "mark_guide_type"

.field public static final MARK_GUIDE_YELLOWPAGE_CID:Ljava/lang/String; = "mark_guide_yellowpage_cid"

.field public static final MARK_NUM_GUIDE_CLASS:Ljava/lang/String; = "com.miui.antispam.ui.activity.MarkNumGuideActivity"

.field public static final MARK_PROVIDER_ID_MIUI:I = 0x18e

.field public static final MARK_TIME_AGENT:Ljava/lang/String; = "mark_time_agent"

.field public static final MARK_TIME_COURIER:Ljava/lang/String; = "mark_time_courier"

.field public static final MARK_TIME_DEFAULT:I = 0x32

.field public static final MARK_TIME_FRAUD:Ljava/lang/String; = "mark_time_fraud"

.field public static final MARK_TIME_HARASS:Ljava/lang/String; = "mark_time_harass"

.field public static final MARK_TIME_SELL:Ljava/lang/String; = "mark_time_sell"

.field public static final MODE_CHOOSE_ANTISPAM:Ljava/lang/String; = "mode_choose_antispam"

.field private static final NEXT_AUTO_END_TIME_OF_QM:Ljava/lang/String; = "next_auto_end_time_of_qm"

.field private static final NEXT_AUTO_START_TIME_OF_QM:Ljava/lang/String; = "next_auto_start_time_of_qm"

.field public static final NOTIFICATION_SHOW_TYPE:Ljava/lang/String; = "notification_show_type"

.field public static final NOT_BLACKLIST_NOTIFICATION:I = 0x1

.field public static final QUIET_MODE_ENABLE:Ljava/lang/String; = "quiet_mode_enable"

.field private static final QUIET_REPEAT_TYPE:Ljava/lang/String; = "quiet_repeat_type"

.field public static final QUIET_WRISTBAND:Ljava/lang/String; = "quiet_wristband"

.field public static final REPEATED_MARK_NUM_PERMISSION:Ljava/lang/String; = "repeated_mark_num_permission"

.field public static final SELL:I = 0x3

.field public static final SELL_NUM_STATE:Ljava/lang/String; = "sell_num_state"

.field public static final SERVICE_SMS_MODE:Ljava/lang/String; = "service_sms_mode"

.field public static final SHOW_ALL:I = 0x0

.field private static final SHOW_BLOCK_NOTIFICATION:Ljava/lang/String; = "show_block_notification"

.field public static final SHOW_NONE:I = 0x2

.field public static final SHOW_NOTIFICATION_TYPE:Ljava/lang/String; = "show_notification_type"

.field public static final SHOW_NOT_BLACKLIST:I = 0x1

.field public static final SMS_CLASSIFIER_AUTO_UPDATE:Ljava/lang/String; = "sms_classifier_auto_update"

.field public static final SMS_CLASSIFIER_UPDATE_TIME:Ljava/lang/String; = "sms_classifier_update_time"

.field private static final START_TIME_OF_QM:Ljava/lang/String; = "start_time_of_qm"

.field public static final STRANGER_CALL_MODE:Ljava/lang/String; = "stranger_call_mode"

.field public static final STRANGER_SMS_MODE:Ljava/lang/String; = "stranger_sms_mode"

.field public static final TYPE_DECLINE:I = 0x1

.field public static final TYPE_END_CALL:I = 0x2

.field public static final VIP_ALL_CONTACTS:I = 0x1

.field public static final VIP_CUSTOM:I = 0x0

.field private static final VIP_LIST_FOR_QM:Ljava/lang/String; = "vip_list_for_qm"

.field public static final WHITE_LIST_COUNT:Ljava/lang/String; = "white_list_count"

.field public static final WHITE_LIST_MODE:Ljava/lang/String; = "white_list_mode"

.field public static final mapIdToBlockType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mapIdToMarkTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mapIdToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2819
    const-string v0, "action_source_sms"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_SMS:Ljava/lang/String;

    .line 2820
    const-string v0, "action_source_call"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_CALL:Ljava/lang/String;

    .line 2821
    const-string v0, "action_source_other"

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    .line 2827
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    .line 2838
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$2;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$2;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    .line 2849
    new-instance v0, Landroid/provider/MiuiSettings$AntiSpam$3;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$AntiSpam$3;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndTimeForQuietMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "end_time_of_qm"

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3171
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "end_time_of_qm"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getHasNewBlockSMS(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3007
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_block_sms"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMarkedNumberBlockType(I)I
    .locals 2
    .param p0, "cid"    # I

    .prologue
    .line 2861
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToBlockType:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMode(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MODE"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 2867
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2869
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getNextAutoEndTime(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "next_auto_end_time_of_qm"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3214
    .local v0, "oldValue":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "next_auto_end_time_of_qm"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getNextAutoStartTime(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "next_auto_start_time_of_qm"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3198
    .local v0, "oldValue":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "next_auto_start_time_of_qm"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getNotificationType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3316
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getQuietRepeatType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_repeat_type"

    const/16 v3, 0x7f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3236
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_repeat_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSMSClassifierUpdateTime(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2975
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_classifier_update_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2977
    .local v0, "oldValue":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_classifier_update_time"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getStartTimeForQuietMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "start_time_of_qm"

    const/16 v3, 0x564

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3151
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "start_time_of_qm"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getVipListForQuietMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3087
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vip_list_for_qm"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3089
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vip_list_for_qm"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static hasNewAntispam(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_antispam"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAntiSpam(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 3013
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "antispam_mode_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3015
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "antispam_mode_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_timer_of_qm_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3111
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_timer_of_qm_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isFirstEntry(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2963
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_enter_with_notification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMarkNumBlockOpen(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2929
    const-string v1, "fraud_num_state"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "agent_num_state"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "courier_num_state"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sell_num_state"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "harass_num_state"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMarkNumBlockSet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2900
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mark_guide_is_set"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2902
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mark_guide_is_set"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isMarkNumGuide(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MODE"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2915
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2917
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3038
    const/4 v0, -0x3

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 3045
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isQuietModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isQuietWristband(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3063
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "quiet_wristband"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isRepeatedCallActionEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3269
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isRepeatedCallEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isRepeatedMarkNumPermitted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2950
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "repeated_mark_num_permission"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSMSClassifierAutoUpdate(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2986
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sms_classifier_auto_update"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 2988
    .local v0, "oldValue":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sms_classifier_auto_update"

    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isShowBlockNotification(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_block_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 3291
    .local v0, "oldValue":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_block_notification"

    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isVipCallActionEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 3249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_act_of_vip"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3251
    .local v0, "oldValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_act_of_vip"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static mapIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 2879
    packed-switch p0, :pswitch_data_0

    .line 2891
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2881
    :pswitch_1
    const-string/jumbo v0, "mark_guide_fraud"

    goto :goto_0

    .line 2883
    :pswitch_2
    const-string/jumbo v0, "mark_guide_agent"

    goto :goto_0

    .line 2885
    :pswitch_3
    const-string/jumbo v0, "mark_guide_sell"

    goto :goto_0

    .line 2887
    :pswitch_4
    const-string/jumbo v0, "mark_guide_courier"

    goto :goto_0

    .line 2889
    :pswitch_5
    const-string/jumbo v0, "mark_guide_harass"

    goto :goto_0

    .line 2879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static resetMarkedNumberBlockSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 3027
    const-string v0, "fraud_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3028
    const-string v0, "agent_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3029
    const-string v0, "courier_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3030
    const-string/jumbo v0, "sell_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3031
    const-string/jumbo v0, "harass_num_state"

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3032
    return-void
.end method

.method public static setAntiSpam(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3021
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "antispam_mode_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3023
    return-void

    .line 3021
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAutoTimerOfQuietMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_timer_of_qm_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3121
    return-void

    .line 3119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEndTimeForQuietMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minute"    # I

    .prologue
    .line 3181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_time_of_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3183
    return-void
.end method

.method public static setFirstEntry(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 2958
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_enter_with_notification"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 2960
    return-void
.end method

.method public static setHasNewAntispam(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Z

    .prologue
    .line 3332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_antispam"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3334
    return-void
.end method

.method public static setHasNewBlockSMS(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 3003
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_new_block_sms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3004
    return-void
.end method

.method public static setMarkNumBlockSet(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 2907
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mark_guide_is_set"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2908
    return-void
.end method

.method public static setMarkNumGuide(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MODE"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2922
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2923
    return-void
.end method

.method public static setMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MODE"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2874
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2876
    return-void
.end method

.method public static setNextAutoEndTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 3205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "next_auto_end_time_of_qm"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3207
    return-void
.end method

.method public static setNextAutoStartTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 3189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "next_auto_start_time_of_qm"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3191
    return-void
.end method

.method public static setNotificationType(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 3309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_notification_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3311
    return-void
.end method

.method public static setQuietMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3052
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    .line 3053
    return-void
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3059
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setQuietMode(Landroid/content/Context;ZI)V

    .line 3060
    return-void
.end method

.method public static setQuietRepeatType(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 3224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quiet_repeat_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3226
    return-void
.end method

.method public static setQuietWristband(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3068
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_wristband"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3070
    return-void

    .line 3068
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRepeatedCallActionEnable(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3278
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->setRepeatedCallEnable(Landroid/content/Context;Z)V

    .line 3279
    return-void
.end method

.method public static setSMSClassifierAutoUpdate(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoUpdate"    # Z

    .prologue
    .line 2993
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_classifier_auto_update"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 2995
    return-void
.end method

.method public static setSMSClassifierUpdateTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 2971
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_classifier_update_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2972
    return-void
.end method

.method public static setShowBlockNotification(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Z

    .prologue
    .line 3299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_block_notification"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 3301
    return-void
.end method

.method public static setStartTimeForQuietMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minute"    # I

    .prologue
    .line 3161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "start_time_of_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3162
    return-void
.end method

.method public static setVipCallActionEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_act_of_vip"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3263
    return-void

    .line 3261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVipListForQuietMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 3100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vip_list_for_qm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3101
    return-void
.end method

.method public static shouldShowGuidingDialog(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2940
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumBlockSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->isMarkNumGuide(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
