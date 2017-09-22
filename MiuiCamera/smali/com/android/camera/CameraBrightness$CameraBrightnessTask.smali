.class Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraBrightness;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraBrightness;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/CameraBrightness;
    .param p2, "x1"    # Lcom/android/camera/CameraBrightness$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;)V

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 118
    .local v8, "time":J
    const-string v5, ""

    .line 119
    .local v5, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 122
    .local v4, "proc":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    const-string v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exit value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 143
    .end local v4    # "proc":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 126
    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "proc":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 130
    .local v3, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 136
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 137
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "proc":Ljava/lang/Process;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_2
    const-string v10, "CameraBrightness"

    const-string v11, "execCommand InterruptedException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    move-object v6, v5

    .line 143
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "proc":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    const-string v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "execCommand lcd value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cost="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 142
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 139
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "proc":Ljava/lang/Process;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    const-string v10, "CameraBrightness"

    const-string v11, "execCommand IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "proc":Ljava/lang/Process;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 136
    .end local v4    # "proc":Ljava/lang/Process;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private getCurrentBackLight()I
    .locals 6

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "backlight":Ljava/lang/String;
    const/4 v2, 0x0

    .line 96
    .local v2, "tryTimes":I
    :cond_0
    :goto_0
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    :cond_2
    const-string v3, "CameraBrightness"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentBackLight currentSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 112
    :goto_1
    return v3

    .line 98
    :cond_3
    const-string v3, "cat sys/class/leds/lcd-backlight/brightness"

    invoke-direct {p0, v3}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_0

    .line 101
    :cond_4
    const-wide/16 v4, 0x12c

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "CameraBrightness"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private updateBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 78
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$400(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 81
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 86
    :goto_1
    const-string v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBrightness setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " useDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v3}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$400(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # setter for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v1, p1}, Lcom/android/camera/CameraBrightness;->access$502(Lcom/android/camera/CameraBrightness;I)I

    goto :goto_0

    .line 84
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 39
    const-string v5, "CameraBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground useDefaultValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v7}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " paused="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mPaused:Z
    invoke-static {v7}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v5}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mPaused:Z
    invoke-static {v5}, Lcom/android/camera/CameraBrightness;->access$100(Lcom/android/camera/CameraBrightness;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 41
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getCurrentBackLight()I

    move-result v2

    .line 42
    .local v2, "currentBacklight":I
    if-gtz v2, :cond_0

    .line 67
    .end local v2    # "currentBacklight":I
    :goto_0
    return-object v4

    .line 47
    .restart local v2    # "currentBacklight":I
    :cond_0
    # getter for: Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$200()Landroid/util/Spline;

    move-result-object v5

    if-nez v5, :cond_1

    .line 48
    iget-object v5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # invokes: Lcom/android/camera/CameraBrightness;->createSpline()V
    invoke-static {v5}, Lcom/android/camera/CameraBrightness;->access$300(Lcom/android/camera/CameraBrightness;)V

    .line 50
    :cond_1
    # getter for: Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$200()Landroid/util/Spline;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 51
    # getter for: Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$200()Landroid/util/Spline;

    move-result-object v5

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    float-to-int v0, v5

    .line 52
    .local v0, "brightness":I
    iget-object v5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/camera/CameraBrightness;->access$400(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 53
    .local v3, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    int-to-float v5, v0

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 55
    const-string v5, "CameraBrightness"

    const-string v6, "doInBackground brightness unchanged"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    const v4, 0x3dcccccd    # 0.1f

    const/16 v5, 0xb9

    invoke-static {v0, v10, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x43390000    # 185.0f

    div-float/2addr v5, v6

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 62
    .local v1, "brightnessAdjustRatio":F
    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v1

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 63
    const/16 v4, 0xff

    invoke-static {v0, v10, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 67
    .end local v0    # "brightness":I
    .end local v1    # "brightnessAdjustRatio":F
    .end local v2    # "currentBacklight":I
    .end local v3    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
