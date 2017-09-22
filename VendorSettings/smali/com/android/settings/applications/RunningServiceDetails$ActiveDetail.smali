.class Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

.field NR:Landroid/widget/Button;

.field NS:Landroid/widget/Button;

.field NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

.field NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

.field NV:Lcom/android/vendorsettings/applications/RunningProcessesView$ViewHolder;

.field NW:Landroid/app/PendingIntent;

.field NX:Landroid/content/ComponentName;

.field mRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method av(Z)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 97
    if-nez p1, :cond_0

    .line 98
    iget-object v1, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v3, v3, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v3, v3, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 108
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lx()V

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-boolean v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Nh:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lx()V

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->lx()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NS:Landroid/widget/Button;

    if-ne p1, v3, :cond_6

    .line 124
    new-instance v3, Landroid/app/ApplicationErrorReport;

    invoke-direct {v3}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 125
    const/4 v4, 0x5

    iput v4, v3, Landroid/app/ApplicationErrorReport;->type:I

    .line 126
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 127
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NX:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 128
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/ApplicationErrorReport;->time:J

    .line 130
    iget-object v4, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :goto_0
    iput-boolean v0, v3, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 132
    new-instance v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-wide v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NA:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-wide v6, v5, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->NA:J

    sub-long/2addr v0, v6

    iput-wide v0, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 139
    :goto_1
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "service_dump.txt"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 144
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    const-string v0, "activity"

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "-a"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "service"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 150
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 154
    :cond_0
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v0, v8

    new-array v0, v0, [B

    .line 156
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 157
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 163
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 164
    const-string v0, "RunningServicesDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-object v4, v3, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NX:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 198
    :goto_4
    return-void

    :cond_2
    move v0, v1

    .line 130
    goto/16 :goto_0

    .line 137
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, v4, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_1

    .line 147
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 148
    :goto_5
    :try_start_6
    const-string v7, "RunningServicesDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t dump service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 150
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_4
    :goto_7
    throw v0

    .line 158
    :catch_2
    move-exception v0

    .line 159
    :goto_8
    :try_start_9
    const-string v1, "RunningServicesDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read service dump: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 161
    if-eqz v2, :cond_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_5
    :goto_a
    throw v0

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NW:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 176
    :try_start_c
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NW:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10080000

    const/high16 v4, 0x80000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_4

    .line 180
    :catch_4
    move-exception v0

    .line 181
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 182
    :catch_5
    move-exception v0

    .line 183
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 184
    :catch_6
    move-exception v0

    .line 185
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NT:Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    if-eqz v0, :cond_8

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->av(Z)V

    goto/16 :goto_4

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-boolean v0, v0, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OT:Z

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->MT:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OM:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    goto/16 :goto_4

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningServiceDetails;->MT:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NU:Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->Ny:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState$BaseItem;->OM:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningServiceDetails$ActiveDetail;->NQ:Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningServiceDetails;->a(Lcom/android/vendorsettings/applications/RunningServiceDetails;)V

    goto/16 :goto_4

    .line 150
    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    goto/16 :goto_7

    .line 161
    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    .line 158
    :catch_b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8

    .line 150
    :catchall_3
    move-exception v0

    goto/16 :goto_6

    .line 147
    :catch_c
    move-exception v0

    goto/16 :goto_5
.end method
