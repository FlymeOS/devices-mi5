.class public Lmiui/util/AutoDisableScreenButtonsManager;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;
    }
.end annotation


# static fields
.field private static final ENABLE_KEY_PRESS_INTERVAL:I = 0x7d0

.field private static final ENABLE_KEY_PRESS_TIMES:I = 0x2

.field private static final PREF_ADSB_NOT_SHOW_PROMPTS:Ljava/lang/String; = "ADSB_NOT_SHOW_PROMPTS"

.field private static final SettingsActionComponent:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "AutoDisableScreenButtonsManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

.field private mHandler:Landroid/os/Handler;

.field private mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

.field private mScreenButtonPressedKeyCode:I

.field private mScreenButtonPressedTime:J

.field private mScreenButtonPressedTimes:I

.field private mStatusBarVisibleOld:Z

.field private mToastShowTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.android.settings/.AutoDisableScreenButtonsAppListSettingsActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;
    .locals 1
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .locals 1
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V

    return-void
.end method

.method static synthetic access$502(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lmiui/util/AutoDisableScreenButtonsManager;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showSettings()V

    return-void
.end method

.method private static getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 222
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 223
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 226
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 228
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private showFloat()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "AutoDisableScreenButtonsManager"

    const-string v1, "showing auto disable screen buttons float window..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    .line 160
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$3;

    invoke-direct {v1, p0}, Lmiui/util/AutoDisableScreenButtonsManager$3;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$4;

    invoke-direct {v1, p0}, Lmiui/util/AutoDisableScreenButtonsManager$4;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->show()V

    .line 178
    return-void
.end method

.method private showPromptsIfNeeds()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 183
    iget-object v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const-string v7, "ADSB_NOT_SHOW_PROMPTS"

    invoke-static {v6, v7}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_0

    move v2, v4

    .line 185
    .end local v3    # "obj":Ljava/lang/Object;
    .local v2, "notShow":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 206
    :goto_1
    return v4

    .line 184
    .end local v2    # "notShow":Z
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 189
    .restart local v2    # "notShow":Z
    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "builder":Lmiui/app/AlertDialog$Builder;
    const v4, 0x110700c5

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x110700c6

    invoke-virtual {v4, v6}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v7, 0x110700c8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x110700c7

    new-instance v7, Lmiui/util/AutoDisableScreenButtonsManager$5;

    invoke-direct {v7, p0}, Lmiui/util/AutoDisableScreenButtonsManager$5;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v4, v6, v7}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 204
    .local v0, "adlg":Lmiui/app/AlertDialog;
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d3

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 205
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    move v4, v5

    .line 206
    goto :goto_1
.end method

.method private showSettings()V
    .locals 5

    .prologue
    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    :try_start_0
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AutoDisableScreenButtonsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start activity exception, component = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 135
    if-eqz p2, :cond_0

    .line 136
    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager$2;

    invoke-direct {v0, p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager$2;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showToast(ZLandroid/os/Handler;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 130
    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x110700c2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    .line 132
    return-void

    .line 130
    :cond_0
    const v0, 0x110700c3

    goto :goto_0
.end method

.method private showToastInner(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 149
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    return-void
.end method


# virtual methods
.method public onInterceptKey(IZI)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 97
    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 100
    .local v0, "time":J
    iget-wide v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    :cond_0
    iget v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    if-eqz v4, :cond_1

    iget v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    if-ne v4, p1, :cond_2

    .line 104
    :cond_1
    iget v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTimes:I

    .line 105
    iget v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTimes:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 106
    iput-wide v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    .line 107
    iput v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTimes:I

    .line 108
    iput v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    .line 109
    const-string v4, "AutoDisableScreenButtonsManager"

    const-string v5, "onInterceptKey: key pressed times reached, exit disable mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    invoke-interface {v4, v3}, Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;->onSetState(Z)V

    .line 126
    .end local v0    # "time":J
    :goto_0
    return v2

    .line 116
    .restart local v0    # "time":J
    :cond_2
    iput v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTimes:I

    .line 118
    :cond_3
    iput-wide v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    .line 119
    iput p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    .line 120
    iget v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTimes:I

    if-ne v3, v2, :cond_4

    iget-wide v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mToastShowTime:J

    sub-long v4, v0, v4

    cmp-long v2, v4, v8

    if-ltz v2, :cond_4

    .line 122
    iput-wide v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mToastShowTime:J

    .line 123
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x110700c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    .end local v0    # "time":J
    :cond_4
    move v2, v3

    .line 126
    goto :goto_0
.end method

.method public onStatusBarVisibilityChange(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 64
    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    if-eq p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$1;

    invoke-direct {v1, p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager$1;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_0
    return-void
.end method
