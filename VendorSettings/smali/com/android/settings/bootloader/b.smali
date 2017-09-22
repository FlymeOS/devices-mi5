.class Lcom/android/vendorsettings/bootloader/b;
.super Landroid/os/AsyncTask;
.source "BootloaderStatusActivity.java"


# instance fields
.field final synthetic Sw:Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/vendorsettings/bootloader/b;->Sw:Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Lcom/android/vendorsettings/bootloader/d;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 108
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 109
    new-instance v0, Lcom/android/vendorsettings/bootloader/d;

    invoke-direct {v0}, Lcom/android/vendorsettings/bootloader/d;-><init>()V

    .line 111
    :try_start_0
    invoke-static {v1}, Lcom/android/vendorsettings/bootloader/c;->ay(Landroid/content/Context;)Lcom/android/vendorsettings/bootloader/d;
    :try_end_0
    .catch Lcom/android/vendorsettings/bootloader/Utils$AccountExcepiton; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vendorsettings/bootloader/Utils$ParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/vendorsettings/bootloader/d;->SA:I

    goto :goto_0

    .line 114
    :catch_1
    move-exception v1

    .line 115
    # getter for: Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/vendorsettings/bootloader/Utils$ParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput v5, v0, Lcom/android/vendorsettings/bootloader/d;->SA:I

    goto :goto_0

    .line 117
    :catch_2
    move-exception v1

    .line 118
    iput v5, v0, Lcom/android/vendorsettings/bootloader/d;->SA:I

    goto :goto_0
.end method

.method protected a(Lcom/android/vendorsettings/bootloader/d;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/b;->Sw:Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->b(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/b;->Sw:Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->b(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/bootloader/b;->Sw:Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;

    iget v1, p1, Lcom/android/vendorsettings/bootloader/d;->SA:I

    iget-object v2, p1, Lcom/android/vendorsettings/bootloader/d;->SB:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;->a(Lcom/android/vendorsettings/bootloader/BootloaderStatusActivity;ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bootloader/b;->a([Landroid/content/Context;)Lcom/android/vendorsettings/bootloader/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/android/vendorsettings/bootloader/d;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bootloader/b;->a(Lcom/android/vendorsettings/bootloader/d;)V

    return-void
.end method
