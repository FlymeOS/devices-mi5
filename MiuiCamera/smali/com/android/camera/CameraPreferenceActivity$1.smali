.class Lcom/android/camera/CameraPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CameraPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraPreferenceActivity;->bringUpDoubleConfirmDlg(Lcom/android/camera/ui/PreviewListPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraPreferenceActivity;

.field final synthetic val$preference:Lcom/android/camera/ui/PreviewListPreference;

.field final synthetic val$snapItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraPreferenceActivity;Ljava/lang/String;Lcom/android/camera/ui/PreviewListPreference;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    iput-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$preference:Lcom/android/camera/ui/PreviewListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    # setter for: Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->access$002(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 83
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    iget-object v0, v0, Lcom/android/camera/CameraPreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_snap_key"

    iget-object v2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$preference:Lcom/android/camera/ui/PreviewListPreference;

    iget-object v1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    const-string v2, "Street-snap"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    # getter for: Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/camera/CameraPreferenceActivity;->access$000(Lcom/android/camera/CameraPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    # setter for: Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->access$002(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
