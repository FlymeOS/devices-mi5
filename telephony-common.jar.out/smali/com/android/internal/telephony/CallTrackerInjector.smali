.class public Lcom/android/internal/telephony/CallTrackerInjector;
.super Ljava/lang/Object;
.source "CallTrackerInjector.java"


# static fields
.field protected static final EVENT_CLEAR_HANGUP_PENDING_CONNECTION_INDEX:I = 0x64

.field public static final HANGUP_FROEGROUND_RESUME_BACKGROUND_CONN_INDEX:I = 0x65

.field private static final HANGUP_TIMEOUT:I = 0xea60

.field public static final HANGUP_WAITING_OR_BACKGROUND_CONN_INDEX:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "CallTrackerInjector"

.field private static sHangupHandler:Landroid/os/Handler;

.field private static sHangupPendingConnectionIndex:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/CallTrackerInjector$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallTrackerInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 9
    invoke-static {p0}, Lcom/android/internal/telephony/CallTrackerInjector;->removeHangupPendingConnectionIndex(I)V

    return-void
.end method

.method public static addHangupPendingConnectionIndex(I)Z
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add hangup connection index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pending hangup index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CallTrackerInjector;->log(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "CallTrackerInjector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static removeAllHangupPendingConnectionIndex()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "remove all hangup connection index."

    invoke-static {v0}, Lcom/android/internal/telephony/CallTrackerInjector;->log(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 45
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    return-void
.end method

.method private static removeHangupPendingConnectionIndex(I)V
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove hangup connection index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pending hangup index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CallTrackerInjector;->log(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 53
    return-void
.end method
