.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 5197
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5197
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5200
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 5205
    .local v8, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5206
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5209
    .local v13, "dockState":I
    packed-switch v13, :pswitch_data_0

    .line 5224
    const/4 v12, 0x0

    .line 5228
    .local v12, "config":I
    :goto_0
    const/4 v1, 0x3

    if-eq v13, v1, :cond_1

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 5231
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1, v12}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5233
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v1, v13}, Lcom/android/server/audio/AudioService;->access$7702(Lcom/android/server/audio/AudioService;I)I

    .line 5336
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_2
    :goto_1
    return-void

    .line 5211
    .restart local v13    # "dockState":I
    :pswitch_0
    const/4 v12, 0x7

    .line 5212
    .restart local v12    # "config":I
    goto :goto_0

    .line 5214
    .end local v12    # "config":I
    :pswitch_1
    const/4 v12, 0x6

    .line 5215
    .restart local v12    # "config":I
    goto :goto_0

    .line 5217
    .end local v12    # "config":I
    :pswitch_2
    const/16 v12, 0x8

    .line 5218
    .restart local v12    # "config":I
    goto :goto_0

    .line 5220
    .end local v12    # "config":I
    :pswitch_3
    const/16 v12, 0x9

    .line 5221
    .restart local v12    # "config":I
    goto :goto_0

    .line 5234
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_3
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5235
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 5237
    .local v16, "state":I
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 5239
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v16

    invoke-virtual {v1, v10, v0}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 5240
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "state":I
    :cond_4
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5241
    const/4 v9, 0x0

    .line 5242
    .local v9, "broadcast":Z
    const/4 v15, -0x1

    .line 5243
    .local v15, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 5244
    :try_start_0
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 5246
    .local v11, "btState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 5250
    :cond_5
    const/4 v9, 0x1

    .line 5252
    :cond_6
    packed-switch v11, :pswitch_data_1

    .line 5274
    :cond_7
    :goto_2
    const/4 v9, 0x0

    .line 5277
    :cond_8
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5278
    if-eqz v9, :cond_2

    .line 5279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v15}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;I)V

    .line 5282
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5283
    .local v14, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v14, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v1, v14}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5254
    .end local v14    # "newIntent":Landroid/content/Intent;
    :pswitch_4
    const/4 v15, 0x1

    .line 5255
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    .line 5258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    goto :goto_3

    .line 5277
    .end local v11    # "btState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5262
    .restart local v11    # "btState":I
    :pswitch_5
    const/4 v15, 0x0

    .line 5263
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I

    .line 5264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto :goto_3

    .line 5267
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    .line 5270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$2502(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 5286
    .end local v9    # "broadcast":Z
    .end local v11    # "btState":I
    .end local v15    # "scoAudioState":I
    :cond_9
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5288
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 5290
    :cond_a
    const-string v1, "screen_state=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5291
    :cond_b
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5294
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 5296
    :cond_c
    const-string v1, "screen_state=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5297
    :cond_d
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5299
    :cond_e
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;Z)V

    .line 5314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5320
    :cond_f
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5322
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 5323
    .local v17, "userId":I
    if-ltz v17, :cond_10

    .line 5325
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 5326
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 5328
    .end local v18    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_10
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const-string v2, "no_record_audio"

    const/4 v3, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5330
    .end local v17    # "userId":I
    :cond_11
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5332
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 5333
    .restart local v17    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const-string v2, "no_record_audio"

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 5209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5252
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
