.class Lcom/android/settings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic Eo:Lcom/android/settings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AddAccountSettings;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 92
    const/4 v3, 0x1

    .line 94
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 96
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v1, :cond_3

    .line 99
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v4, "pendingIntent"

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AddAccountSettings;->a(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    const-string v4, "hasMultipleUsers"

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/iC;->ae(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string v4, "android.intent.extra.USER"

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AddAccountSettings;->b(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AddAccountSettings;->b(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v2

    .line 114
    :goto_0
    :try_start_2
    const-string v3, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "account_setup_wizard"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 127
    :cond_1
    if-eqz v1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 131
    :cond_2
    :goto_1
    return-void

    .line 107
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AddAccountSettings;->a(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AddAccountSettings;->a(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 110
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/settings/accounts/AddAccountSettings;->a(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move v1, v3

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    move v0, v3

    .line 116
    :goto_2
    :try_start_4
    const-string v1, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "AccountSettings"

    const-string v3, "addAccount was canceled"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 123
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "account_setup_wizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1, v6}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 127
    :cond_6
    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    :goto_3
    :try_start_5
    const-string v1, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_setup_wizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 127
    :cond_8
    if-eqz v3, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto/16 :goto_1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    :goto_4
    :try_start_6
    const-string v1, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_setup_wizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 127
    :cond_a
    if-eqz v3, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto/16 :goto_1

    .line 123
    :catchall_0
    move-exception v0

    :goto_5
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "account_setup_wizard"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 124
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1, v6}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 127
    :cond_b
    if-eqz v3, :cond_c

    .line 128
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->Eo:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    :cond_c
    throw v0

    .line 123
    :catchall_1
    move-exception v0

    move v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    move v3, v1

    goto :goto_5

    :catchall_3
    move-exception v1

    move v3, v0

    move-object v0, v1

    goto :goto_5

    .line 119
    :catch_3
    move-exception v0

    move v3, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move v3, v1

    goto :goto_4

    .line 117
    :catch_5
    move-exception v0

    move v3, v2

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move v3, v1

    goto/16 :goto_3

    .line 115
    :catch_7
    move-exception v0

    move v0, v2

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move v0, v1

    goto/16 :goto_2
.end method
