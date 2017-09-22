.class final Lcom/android/vendorsettings/sound/d;
.super Ljava/lang/Thread;
.source "AsyncMediaPlayer.java"


# instance fields
.field final synthetic aqd:Lcom/android/vendorsettings/sound/a;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/a;)V
    .locals 1

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    .line 139
    const-string v0, "AsyncMediaPlayer-Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/sound/c;

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget v1, v0, Lcom/android/vendorsettings/sound/c;->code:I

    packed-switch v1, :pswitch_data_0

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/a;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/a;Lcom/android/vendorsettings/sound/d;)Lcom/android/vendorsettings/sound/d;

    .line 169
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 149
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/a;Lcom/android/vendorsettings/sound/c;)V

    goto :goto_1

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/a;->b(Lcom/android/vendorsettings/sound/a;)V

    goto :goto_1

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/sound/d;->aqd:Lcom/android/vendorsettings/sound/a;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/a;->c(Lcom/android/vendorsettings/sound/a;)V

    goto :goto_1

    .line 171
    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
