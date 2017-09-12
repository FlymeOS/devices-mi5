.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1856
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1857
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1860
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1861
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "hide_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1863
    const-string v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1865
    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1867
    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1869
    const-string v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1871
    const-string v1, "volumekey_launch_camera"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1873
    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1875
    const-string v1, "auto_test_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1877
    const-string v1, "single_key_use_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1879
    const-string v1, "key_bank_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1881
    const-string v1, "key_trans_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1883
    const-string v1, "key_long_press_volume_down"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1885
    const-string v1, "vr_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1888
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1889
    return-void
.end method

.method public onChange(Z)V
    .locals 12
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1892
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1893
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "hide_nav_bar"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    .line 1894
    .local v2, "hideNavBar":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    if-eq v6, v2, :cond_0

    .line 1895
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-boolean v2, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    .line 1896
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateNavBar()V

    .line 1898
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1899
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "screen_buttons_state"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    :goto_1
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    .line 1902
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "trackball_wake_screen"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v6, v4

    :goto_2
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1904
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "volumekey_wake_screen"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v6, v4

    :goto_3
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 1906
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "volumekey_launch_camera"

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    :goto_4
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    .line 1909
    const-string v6, "camera_key_preferred_action_type"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1912
    .local v1, "cameraKeyActionType":I
    if-ne v4, v1, :cond_7

    .line 1913
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v6, 0x4

    const-string v9, "camera_key_preferred_action_shortcut_id"

    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v11

    invoke-static {v3, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v6, v9, :cond_6

    move v6, v4

    :goto_5
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1922
    :goto_6
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "auto_test_mode_on"

    const/4 v9, 0x0

    invoke-static {v3, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    :goto_7
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    .line 1923
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "single_key_use_enable"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_9

    move v6, v4

    :goto_8
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    .line 1925
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v6, :cond_a

    .line 1926
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    .line 1930
    :goto_9
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "key_bank_card_in_ese"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-lez v6, :cond_b

    move v6, v4

    :goto_a
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    .line 1932
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v6, "key_trans_card_in_ese"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-lez v6, :cond_c

    move v6, v4

    :goto_b
    iput-boolean v6, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    .line 1934
    const-string v6, "key_long_press_volume_down"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 1937
    const-string v6, "Street-snap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1938
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    .line 1950
    :goto_c
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string v8, "vr_mode"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v4, :cond_10

    :goto_d
    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z
    invoke-static {v6, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 1951
    monitor-exit v7

    .line 1952
    return-void

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cameraKeyActionType":I
    .end local v2    # "hideNavBar":Z
    :cond_1
    move v2, v5

    .line 1893
    goto/16 :goto_0

    .restart local v2    # "hideNavBar":Z
    :cond_2
    move v6, v5

    .line 1899
    goto/16 :goto_1

    :cond_3
    move v6, v5

    .line 1902
    goto/16 :goto_2

    :cond_4
    move v6, v5

    .line 1904
    goto/16 :goto_3

    :cond_5
    move v6, v5

    .line 1906
    goto/16 :goto_4

    .restart local v1    # "cameraKeyActionType":I
    :cond_6
    move v6, v5

    .line 1913
    goto/16 :goto_5

    .line 1920
    :cond_7
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto/16 :goto_6

    .line 1951
    .end local v1    # "cameraKeyActionType":I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "cameraKeyActionType":I
    :cond_8
    move v6, v5

    .line 1922
    goto/16 :goto_7

    :cond_9
    move v6, v5

    .line 1923
    goto/16 :goto_8

    .line 1928
    :cond_a
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I
    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_9

    :cond_b
    move v6, v5

    .line 1930
    goto :goto_a

    :cond_c
    move v6, v5

    .line 1932
    goto :goto_b

    .line 1940
    .restart local v0    # "action":Ljava/lang/String;
    :cond_d
    const-string v6, "public_transportation_shortcuts"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1941
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x2

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_c

    .line 1944
    :cond_e
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I
    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_c

    .line 1947
    :cond_f
    const-string v6, "key_long_press_volume_down"

    const-string v8, "none"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :cond_10
    move v4, v5

    .line 1950
    goto :goto_d
.end method
