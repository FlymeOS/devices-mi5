.class Lcom/android/settings/display/n;
.super Ljava/lang/Object;
.source "ForceTouchGuideActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic Yr:Lcom/android/settings/display/ForceTouchGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ForceTouchGuideActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/display/n;->Yr:Lcom/android/settings/display/ForceTouchGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/display/n;->Yr:Lcom/android/settings/display/ForceTouchGuideActivity;

    invoke-static {v0}, Lcom/android/settings/display/ForceTouchGuideActivity;->a(Lcom/android/settings/display/ForceTouchGuideActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 63
    return-void
.end method
