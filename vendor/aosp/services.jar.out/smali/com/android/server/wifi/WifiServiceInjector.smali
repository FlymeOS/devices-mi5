.class public Lcom/android/server/wifi/WifiServiceInjector;
.super Ljava/lang/Object;
.source "WifiServiceInjector.java"


# static fields
.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiServiceInjector"

.field private static final WIFI_CONFIG_HEADER:Ljava/lang/String; = "network={"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfBackgroundScanAllowed(Landroid/content/Context;Landroid/os/WorkSource;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x1

    .line 31
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    .line 33
    .local v1, "realOwner":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    :goto_1
    return v2

    .line 31
    .end local v1    # "realOwner":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_0

    .line 38
    .restart local v1    # "realOwner":I
    :cond_1
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v2

    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public static handleClientMessage(Landroid/os/Message;)V
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 46
    iget v3, p0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 50
    invoke-static {p0, v5, v6}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 55
    const-string v3, "ssid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "ssid":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceInjector;->readWifiConfigFromSupplicantFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "wifiConfig":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 58
    const/4 v3, 0x1

    const-string v4, "config"

    invoke-static {v4, v2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "wifiConfig":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v5, v6}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x25fa1
        :pswitch_0
    .end packed-switch
.end method

.method private static readWifiConfigFromSupplicantFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, "wifiConfigBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 75
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 77
    .local v1, "found":Z
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    move-object v7, v6

    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .local v7, "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v2, :cond_9

    .line 80
    :try_start_2
    const-string v8, "[ \\t]*network=\\{"

    invoke-virtual {v2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 83
    :cond_0
    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "trimmedLine":Ljava/lang/String;
    const-string v8, "ssid="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 86
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "network={\n"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_1
    const-string v8, "[ \\t]*\\}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    .line 104
    .end local v5    # "trimmedLine":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v3, v4

    .line 112
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    return-object v8

    .line 90
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "found":Z
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "trimmedLine":Ljava/lang/String;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_3
    if-eqz v7, :cond_4

    .line 91
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    move-object v6, v7

    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .end local v5    # "trimmedLine":Ljava/lang/String;
    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_5
    move-object v6, v7

    .line 79
    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    move-object v7, v6

    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 107
    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    move-object v3, v4

    .line 110
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 98
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    const-string v8, "WifiServiceInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 104
    if-eqz v3, :cond_2

    .line 105
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 107
    :catch_2
    move-exception v8

    goto :goto_3

    .line 100
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v8, "WifiServiceInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 104
    if-eqz v3, :cond_2

    .line 105
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 107
    :catch_4
    move-exception v8

    goto :goto_3

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 104
    :goto_7
    if-eqz v3, :cond_7

    .line 105
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 109
    :cond_7
    :goto_8
    throw v8

    .line 112
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 107
    :catch_5
    move-exception v9

    goto :goto_8

    .line 103
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_7

    .line 100
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 98
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_9
    move-object v6, v7

    .end local v7    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_2
.end method

.method private static replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 118
    .local v1, "reply":Landroid/os/Message;
    iget v2, p0, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 119
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 120
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "reply":Landroid/os/Message;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiServiceInjector"

    const-string v3, "replyToMessage Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
