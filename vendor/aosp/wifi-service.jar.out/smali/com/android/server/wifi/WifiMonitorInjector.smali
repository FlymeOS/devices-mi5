.class final Lcom/android/server/wifi/WifiMonitorInjector;
.super Ljava/lang/Object;
.source "WifiMonitorInjector.java"


# static fields
.field private static final PASSWORD_STR:Ljava/lang/String; = "PASSWORD"

.field private static mRequestPasswordPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "PASSWORD-([0-9]+):Password needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitorInjector;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handlePasswordRequest(Ljava/lang/String;ILcom/android/internal/util/StateMachine;)Z
    .locals 6
    .param p0, "requestName"    # Ljava/lang/String;
    .param p1, "eventLogCounter"    # I
    .param p2, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    const/4 v4, 0x1

    .line 22
    const-string v5, "PASSWORD"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "SSID":Ljava/lang/String;
    const/4 v3, -0x2

    .line 25
    .local v3, "reason":I
    sget-object v5, Lcom/android/server/wifi/WifiMonitorInjector;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 26
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 34
    :cond_0
    :goto_0
    const v5, 0x2400f

    invoke-virtual {p2, v5, p1, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 37
    .end local v0    # "SSID":Ljava/lang/String;
    .end local v2    # "match":Ljava/util/regex/Matcher;
    .end local v3    # "reason":I
    :goto_1
    return v4

    .line 30
    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    .restart local v3    # "reason":I
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0

    .line 37
    .end local v0    # "SSID":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "match":Ljava/util/regex/Matcher;
    .end local v3    # "reason":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
