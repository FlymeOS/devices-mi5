.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Hms;,
        Lmiui/provider/ExtraTelephony$AntiSpamAccount;,
        Lmiui/provider/ExtraTelephony$Judge;,
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$AntiSpamSim;,
        Lmiui/provider/ExtraTelephony$AntiSpamMode;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Phonelist;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$QuietModeEnableListener;,
        Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$DeletableSyncColumns;,
        Lmiui/provider/ExtraTelephony$SyncColumns;,
        Lmiui/provider/ExtraTelephony$PrivateAddresses;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$ServiceCategory;,
        Lmiui/provider/ExtraTelephony$AdvancedSeen;,
        Lmiui/provider/ExtraTelephony$MxType;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field public static final BANK_CATEGORY_NUMBER_PREFIX_106:Ljava/lang/String; = "106"

.field public static final BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

.field public static final BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

.field public static final BLOCKED_CONV_ADDR:Ljava/lang/String; = "blocked_conv_addr"

.field public static final BLOCKED_FLAG:Ljava/lang/String; = "blocked_flag"

.field public static final BLOCKED_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final BLOCKED_FLAG_BLOCKED_MSG:Ljava/lang/String; = "1"

.field public static final BLOCKED_FLAG_NO_BLOCKED_MSG:Ljava/lang/String; = "0"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field public static final DEFAULT_THREADS_LIST_TYPE_SP:I = 0x1

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field public static final FORCE_DELETE:Ljava/lang/String; = "force_delete"

.field public static final INTERCEPT_STATE_ALL:I = 0x0

.field public static final INTERCEPT_STATE_CALL:I = 0x2

.field public static final INTERCEPT_STATE_SMS:I = 0x1

.field public static final LOCAL_PRIVATE_ADDRESS_SYNC:Ljava/lang/String; = "local.priaddr.sync"

.field public static final LOCAL_SMS_SYNC:Ljava/lang/String; = "local.sms.sync"

.field public static final LOCAL_STICKY_THREAD_SYNC:Ljava/lang/String; = "local.stkthrd.sync"

.field public static final LOCAL_SYNC_NAME:Ljava/lang/String; = "localName"

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field public static final NO_NOTIFY_FLAG:Ljava/lang/String; = "no_notify"

.field public static final PRIVACY_FLAG:Ljava/lang/String; = "privacy_flag"

.field public static final PRIVACY_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final PRIVACY_FLAG_NO_PRIVATE_MSG:Ljava/lang/String; = "0"

.field public static final PRIVACY_FLAG_PRIVATE_MSG:Ljava/lang/String; = "1"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "antispam"

.field public static final PrefixCode:Ljava/lang/String; = "***"

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"

.field public static final THREADS_LIST_TYPE:Ljava/lang/String; = "threads_list_type"

.field public static final THREADS_LIST_TYPE_COMPOSITE:I = 0x0

.field public static final TYPE_INTERCEPT_ADDRESS:I = 0x2

.field public static final TYPE_INTERCEPT_NUMBER:I = 0x1

.field public static final TYPE_INTERCEPT_NUMBER_FRAGMENT:I = 0x3

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_ALARMS:I = 0x3

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x3

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

.field private static mQuietListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/provider/ExtraTelephony$QuietModeEnableListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "((\\[[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\])|(\\\u3010[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\\u3011))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

    .line 255
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2343
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-object v0
.end method

.method private static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .prologue
    .line 1983
    if-nez p2, :cond_1

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1984
    :cond_1
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1985
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static checkKeyguardForQuiet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1914
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1915
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    .line 1945
    :goto_0
    return v0

    .line 1917
    :cond_0
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1918
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 1919
    goto :goto_0

    .line 1920
    :cond_1
    const-string v0, "com.android.incallui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v8

    .line 1923
    goto :goto_0

    .line 1925
    :cond_3
    const/4 v6, 0x0

    .line 1927
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://antispamCommon/zenmode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "4"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1930
    if-eqz v6, :cond_5

    .line 1936
    if-eqz v6, :cond_4

    .line 1937
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    goto :goto_0

    .line 1936
    :cond_5
    if-eqz v6, :cond_6

    .line 1937
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    move v0, v8

    .line 1945
    goto :goto_0

    .line 1933
    :catch_0
    move-exception v7

    .line 1934
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    if-eqz v6, :cond_6

    .line 1937
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1936
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 1937
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_8
    move v0, v9

    .line 1942
    goto :goto_0
.end method

.method public static getCallBlockType(Landroid/content/Context;Ljava/lang/String;ZZZ)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isForwardCall"    # Z
    .param p3, "isRepeated"    # Z
    .param p4, "isRepeatedBlocked"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    :goto_0
    return v6

    .line 1616
    :cond_0
    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v6, v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1620
    :cond_1
    move-object v2, p1

    .line 1621
    .local v2, "num":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1623
    .local v6, "blockType":I
    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lmiui/provider/ExtraTelephony$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/provider/ExtraTelephony$1;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    invoke-direct {v8, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1640
    .local v8, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1641
    const-wide/16 v0, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v7

    .line 1643
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "ExtraTelephony"

    const-string v1, "getCallBlockType"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1644
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 1645
    .local v7, "e":Ljava/util/concurrent/ExecutionException;
    const-string v0, "ExtraTelephony"

    const-string v1, "getCallBlockType"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1646
    .end local v7    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v7

    .line 1648
    .local v7, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1649
    invoke-virtual {v8, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1651
    :cond_2
    const-string v0, "ExtraTelephony"

    const-string v1, "getCallBlockType"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getRealBlockType(I)I
    .locals 1
    .param p0, "blockType"    # I

    .prologue
    .line 1760
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 1698
    :cond_0
    :goto_0
    return v0

    .line 1671
    :cond_1
    if-nez p2, :cond_2

    .line 1672
    const-string p2, ""

    .line 1675
    :cond_2
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1676
    const/4 v0, 0x0

    .line 1679
    .local v0, "blockType":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1680
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Lmiui/provider/ExtraTelephony$Judge;->SMS_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1686
    if-gez v0, :cond_3

    move v0, v4

    .line 1687
    goto :goto_0

    .line 1690
    :cond_3
    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v2

    .line 1691
    .local v2, "realBlockType":I
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    .line 1692
    const-string v4, "mode_choose_antispam"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {p0, p1, v2, v4, p3}, Lmiui/provider/ExtraTelephony;->updateSmsLog(Landroid/content/Context;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1695
    .end local v2    # "realBlockType":I
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1696
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSmsURLScanResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1710
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1714
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1715
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lmiui/provider/ExtraTelephony$Judge;->URL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1723
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v2

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1723
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isAddressInBlack(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number = ? and type = ? and sync_dirty <> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "1"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1242
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1244
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1246
    .local v8, "states":I
    if-eqz v8, :cond_0

    if-ne v8, p2, :cond_1

    .line 1253
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1256
    .end local v8    # "states":I
    :goto_0
    return v0

    .line 1253
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v10

    .line 1256
    goto :goto_0

    .line 1250
    :catch_0
    move-exception v7

    .line 1251
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 998
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return v9

    .line 1001
    :cond_1
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "1"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1012
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1014
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v0, v8

    .line 1018
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    .line 1001
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    move v0, v9

    .line 1014
    goto :goto_2

    .line 1015
    :catch_0
    move-exception v7

    .line 1016
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInBlacklist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1032
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 1059
    :goto_0
    return v0

    .line 1036
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "1"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1045
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1047
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1048
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1049
    .local v8, "state":I
    if-eqz v8, :cond_1

    if-ne v8, p2, :cond_2

    .line 1056
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v8    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v0, v9

    .line 1059
    goto :goto_0

    .line 1053
    :catch_0
    move-exception v7

    .line 1054
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInHidingWhite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1431
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number = ? and isdisplay = ? and type = ? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "0"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v10, "2"

    aput-object v10, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1441
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1443
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 1449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1452
    :goto_0
    return v0

    .line 1449
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v9

    .line 1452
    goto :goto_0

    .line 1446
    :catch_0
    move-exception v7

    .line 1447
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInHidingWhite(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 1422
    :goto_0
    return v0

    .line 1398
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number= ? and isdisplay = ? and type= ? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "0"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1408
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1410
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1412
    .local v8, "state":I
    if-eqz v8, :cond_1

    if-ne v8, p2, :cond_2

    .line 1419
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v8    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v0, v9

    .line 1422
    goto :goto_0

    .line 1416
    :catch_0
    move-exception v7

    .line 1417
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type = ? "

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1367
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1369
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1371
    .local v8, "keyword":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1383
    .end local v8    # "keyword":Ljava/lang/String;
    :goto_0
    return v0

    .line 1380
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v9

    .line 1383
    goto :goto_0

    .line 1377
    :catch_0
    move-exception v7

    .line 1378
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    const-string v1, "Cursor exception in shouldFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "states"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    const/4 v0, 0x0

    .line 1350
    :goto_0
    return v0

    .line 1274
    :cond_0
    const-string v10, ""

    .line 1275
    .local v10, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1285
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1287
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1288
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1289
    .local v9, "state":I
    if-eqz v9, :cond_1

    if-ne v9, p2, :cond_2

    .line 1290
    :cond_1
    const/4 v0, 0x1

    .line 1296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1293
    :catch_0
    move-exception v7

    .line 1294
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1302
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number = ? and type = ? and sync_dirty <> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1311
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 1313
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1314
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    .line 1315
    .restart local v9    # "state":I
    if-eqz v9, :cond_5

    if-ne v9, p2, :cond_6

    .line 1316
    :cond_5
    const/4 v0, 0x1

    .line 1322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "state":I
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1327
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number= ? and type= ? and sync_dirty <> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1335
    if-eqz v6, :cond_a

    .line 1337
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1338
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    .line 1339
    .restart local v9    # "state":I
    if-eqz v9, :cond_8

    if-ne v9, p2, :cond_9

    .line 1340
    :cond_8
    const/4 v0, 0x1

    .line 1346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1319
    .end local v9    # "state":I
    :catch_1
    move-exception v7

    .line 1320
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1346
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1350
    :cond_a
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1343
    :catch_2
    move-exception v7

    .line 1344
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 1493
    :goto_0
    return v0

    .line 1468
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1472
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1474
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1475
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1482
    .local v6, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v6    # "antispamNumber":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v9

    .line 1493
    goto :goto_0

    .line 1487
    :catch_0
    move-exception v8

    .line 1488
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInViplist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return v9

    .line 1201
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "3"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1210
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1212
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 1216
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_2
    move v0, v9

    .line 1212
    goto :goto_1

    .line 1213
    :catch_0
    move-exception v7

    .line 1214
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return v9

    .line 1071
    :cond_1
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1074
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and isdisplay=? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "2"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v10, "1"

    aput-object v10, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1084
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1086
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v0, v8

    .line 1090
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    .line 1071
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    move v0, v9

    .line 1086
    goto :goto_2

    .line 1087
    :catch_0
    move-exception v7

    .line 1088
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInWhitelist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    .line 1104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1188
    :goto_0
    return v0

    .line 1109
    :cond_0
    const-string v10, ""

    .line 1110
    .local v10, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type= ? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1121
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1123
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1125
    .local v9, "state":I
    if-eqz v9, :cond_1

    if-ne v9, p2, :cond_2

    .line 1126
    :cond_1
    const/4 v0, 0x1

    .line 1132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1110
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1129
    :catch_0
    move-exception v7

    .line 1130
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1138
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1148
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 1150
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1151
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    .line 1152
    .restart local v9    # "state":I
    if-eqz v9, :cond_5

    if-ne v9, p2, :cond_6

    .line 1153
    :cond_5
    const/4 v0, 0x1

    .line 1159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "state":I
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1164
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and isdisplay =?  and type=? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1174
    if-eqz v6, :cond_a

    .line 1176
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1177
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    .line 1178
    .restart local v9    # "state":I
    if-eqz v9, :cond_8

    if-ne v9, p2, :cond_9

    .line 1179
    :cond_8
    const/4 v0, 0x1

    .line 1185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1156
    .end local v9    # "state":I
    :catch_1
    move-exception v7

    .line 1157
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1185
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1188
    :cond_a
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1182
    :catch_2
    move-exception v7

    .line 1183
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isMarkedNumberAntispam(Landroid/content/Context;ILjava/lang/String;IZI)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "antispamProviderId"    # I
    .param p4, "isUserMarked"    # Z
    .param p5, "markedCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1552
    invoke-static {p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p2

    .line 1553
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p2}, Lmiui/provider/ExtraTelephony;->isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    const/16 v0, 0x18e

    if-eq p3, v0, :cond_0

    if-nez p4, :cond_0

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x32

    invoke-static {p0, v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p5, :cond_1

    :cond_0
    move v0, v1

    .line 1564
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    .line 1504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    const/4 v0, 0x0

    .line 1535
    :goto_0
    return v0

    .line 1508
    :cond_0
    const-string v10, ""

    .line 1509
    .local v10, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1511
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1520
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1522
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1523
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1524
    .local v9, "state":I
    if-eqz v9, :cond_1

    if-ne v9, p2, :cond_2

    .line 1525
    :cond_1
    const/4 v0, 0x1

    .line 1531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1509
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1528
    :catch_0
    move-exception v7

    .line 1529
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1535
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1576
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1579
    .local v6, "completeNum":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v9

    const-string v3, "number = ? or number = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object v6, v4, v10

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1583
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1585
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1586
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v11, :cond_0

    .line 1593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1596
    :goto_0
    return v0

    .line 1593
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v9

    .line 1596
    goto :goto_0

    .line 1590
    :catch_0
    move-exception v8

    .line 1591
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2325
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return v1

    .line 2328
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 2329
    .local v0, "phoneNumber":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2330
    goto :goto_0

    .line 2331
    :cond_2
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "106"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2332
    goto :goto_0
.end method

.method public static isTargetServiceNum(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1736
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1739
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1740
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Lmiui/provider/ExtraTelephony$Judge;->SERVICE_NUM_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1745
    .local v2, "result":I
    if-ne v2, v3, :cond_0

    .line 1749
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "result":I
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "result":I
    :cond_0
    move v3, v4

    .line 1745
    goto :goto_0

    .line 1746
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 1749
    goto :goto_0
.end method

.method public static isURLFlagRisky(I)Z
    .locals 2
    .param p0, "blockType"    # I

    .prologue
    .line 1771
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static monthReport(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "causeId"    # I
    .param p4, "slotId"    # I

    .prologue
    .line 1780
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1781
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1783
    const-string v2, "reason"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1784
    const-string v2, "slotId"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1786
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1787
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.antispam"

    const-string v4, "com.miui.antispam.service.AntiSpamService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1790
    const-string v2, "monthReport"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1793
    return-void
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1959
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1960
    const-string v5, ""

    .line 1979
    :goto_0
    return-object v5

    .line 1963
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1964
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1965
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1966
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1969
    .local v0, "c":C
    invoke-static {v4, v0, v2}, Lmiui/provider/ExtraTelephony;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 1970
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1971
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1972
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1965
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1973
    :cond_2
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1974
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1975
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1976
    :cond_5
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1979
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .prologue
    .line 1879
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1880
    sget-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    if-nez v0, :cond_0

    .line 1881
    new-instance v0, Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    .line 1883
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1886
    return-void
.end method

.method public static unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .prologue
    .line 1893
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1894
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    if-eqz v0, :cond_0

    .line 1895
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1896
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    .line 1898
    :cond_0
    return-void
.end method

.method public static updateSmsLog(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "blockType"    # I
    .param p3, "mode"    # I
    .param p4, "slotId"    # I

    .prologue
    .line 1808
    const/4 v2, 0x2

    :try_start_0
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {p0, p1, v2, v0, v1}, Lmiui/provider/ExtraTelephony;->monthReport(Landroid/content/Context;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "type = 2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1817
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1819
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1821
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1822
    .local v11, "values":Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-virtual {v11, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1824
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1825
    const-string v2, "reason"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1826
    const-string v2, "mode"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1827
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1842
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1845
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_2
    return-void

    .line 1809
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 1810
    .local v10, "e1":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1831
    .end local v10    # "e1":Ljava/lang/Exception;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1832
    .local v12, "id":J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1833
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v2, "reason"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1834
    const-string v2, "mode"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1839
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v12    # "id":J
    :catch_1
    move-exception v9

    .line 1840
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "ExtraTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor exception in isInBlacklist(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1842
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method
