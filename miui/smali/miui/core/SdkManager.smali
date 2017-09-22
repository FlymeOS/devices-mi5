.class public abstract Lmiui/core/SdkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RETURN_CODE_LOW_SDK_VERSION:I = 0x1

.field public static final RETURN_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "miuisdk"

.field private static final wQ:Ljava/lang/String; = "com.miui.internal.server.CoreService"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static bM()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmiui/core/SdkManager$1;

    invoke-direct {v1}, Lmiui/core/SdkManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method private static buildProxy()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->buildProxy()V

    .line 114
    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class;->buildProxy()V

    .line 115
    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;->buildProxy()V

    .line 116
    invoke-static {}, Lcom/miui/internal/variable/Android_App_Activity_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_Activity_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_Activity_class$Factory;->get()Lcom/miui/internal/variable/Android_App_Activity_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_Activity_class;->buildProxy()V

    .line 118
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class;->buildProxy()V

    .line 119
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->buildProxy()V

    .line 121
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_Preference_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->buildProxy()V

    .line 122
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->buildProxy()V

    .line 124
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;->buildProxy()V

    .line 125
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class;->buildProxy()V

    .line 126
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_GridView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class;->buildProxy()V

    .line 127
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;->buildProxy()V

    .line 128
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;->buildProxy()V

    .line 129
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_Spinner_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->buildProxy()V

    .line 130
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->buildProxy()V

    .line 131
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;->buildProxy()V

    .line 132
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->buildProxy()V

    .line 134
    invoke-static {}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->get()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->buildProxy()V

    .line 136
    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->get()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->buildProxy()V

    .line 137
    return-void
.end method

.method private static c(Landroid/content/Context;Lmiui/core/Manifest;)Z
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lmiui/core/CompatibleManager;

    invoke-direct {v0, p0, p1}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 175
    invoke-virtual {v0}, Lmiui/core/CompatibleManager;->isCompatible()Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;Lmiui/core/Manifest;)V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/miui/internal/component/ComponentManager;

    invoke-direct {v0, p1}, Lcom/miui/internal/component/ComponentManager;-><init>(Lmiui/core/Manifest;)V

    .line 180
    invoke-virtual {v0}, Lcom/miui/internal/component/ComponentManager;->load()V

    .line 181
    return-void
.end method

.method public static initialize(Landroid/app/Application;Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 79
    const-class v2, Lmiui/core/SdkManager;

    monitor-enter v2

    .line 80
    :try_start_0
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-lt v0, v6, :cond_0

    .line 81
    const-string v0, "miuisdk"

    const-string v3, "sdk already initialized"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v2

    .line 107
    :goto_0
    return v1

    .line 85
    :cond_0
    sput-object p0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    .line 87
    invoke-static {}, Lcom/miui/internal/util/PackageHelper;->isMiuiSystem()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->setupResourceHook()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/miui/internal/component/module/ModuleLoader;->loadResources([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com/miui/internal/variable/v%d/%s\n.Android_Content_Res_Resources_class\nv16\nloadDrawable\n(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;\nv21\nloadDrawable\n(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;\n.Android_App_Activity_class\nv16\nsetProgressBarVisibility\n(Z)V\nsetProgressBarIndeterminateVisibility\n(Z)V\nsetProgressBarIndeterminate\n(Z)V\nsetProgress\n(I)V\n.Android_View_View_class\nv16\nrefreshDrawableState\n()V\nonCreateDrawableState\n(I)[I\ncreateContextMenu\n(Landroid/view/ContextMenu;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nsetDisplayListProperties\n(Landroid/view/DisplayList;)V\nv21\nrefreshDrawableState\n()V\nonCreateDrawableState\n(I)[I\ncreateContextMenu\n(Landroid/view/ContextMenu;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nsetDisplayListProperties\n(Landroid/view/RenderNode;)V\n.Android_View_ViewGroup_class\nv16\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nv19\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nv21\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n.Android_Preference_Preference_class\nv16\nonBindView\n(Landroid/view/View;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n.Android_Preference_EditTextPreference_class\nv0\nonAddEditTextToDialogView\n(Landroid/view/View;Landroid/widget/EditText;)V\n.Android_Widget_RemoteViews_class\nv16\nprepareContext\n(Landroid/content/Context;)Landroid/content/Context;\nv21\ngetContextForResources\n(Landroid/content/Context;)Landroid/content/Context;\n.Android_Widget_ListView_class\nv16\nlayoutChildren\n()V\nfillGap\n(Z)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\nv21\nlayoutChildren\n()V\nfillGap\n(Z)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n.Android_Widget_GridView_class\nv16\nlayoutChildren\n()V\nfillGap\n(Z)V\n.Android_Widget_ListPopupWindow_class\nv16\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\nshow\n()V\n.Android_Widget_PopupWindow_class\nv21\ninvokePopup\n(Landroid/view/WindowManager$LayoutParams;)V\nv23\ninvokePopup\n(Landroid/view/WindowManager$LayoutParams;)V\n.Android_Widget_AbsSeekBar_class\nv16\nonTouchEvent\n(Landroid/view/MotionEvent;)Z\n.Android_Graphics_Drawable_Drawable_class\nv16\ncreateFromXmlInner\n(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;\nv17\ncreateFromXmlInner\n(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;\nv21\ncreateFromXmlInner\n(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;\n.Android_Text_Util_Linkify_class\nv16\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\nv19\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\n.Internal_Policy_Impl_PhoneWindow_class\nv16\ninstallDecor\n()V\n"

    invoke-static {v0, v3}, Lcom/miui/internal/util/ClassProxy;->setupClassHook(ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 98
    :goto_1
    if-nez v0, :cond_2

    .line 99
    :try_start_2
    invoke-static {}, Lmiui/core/SdkManager;->buildProxy()V

    .line 102
    :cond_2
    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->setupInterpreterHook()Z

    .line 104
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge v0, v6, :cond_3

    .line 105
    const/4 v0, 0x2

    sput v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    .line 107
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_3
    const-string v3, "miuisdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setup class hook enconter errors: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method public static start(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 148
    const-class v1, Lmiui/core/SdkManager;

    monitor-enter v1

    .line 149
    :try_start_0
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-lt v0, v3, :cond_0

    .line 150
    const-string v0, "miuisdk"

    const-string v2, "sdk already started"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lmiui/core/ManifestParser;->create(Landroid/content/Context;)Lmiui/core/ManifestParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v0

    .line 155
    sget-object v2, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    instance-of v2, v2, Lcom/miui/internal/app/MiuiApplication;

    if-nez v2, :cond_1

    .line 156
    sget-object v2, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v2, v0}, Lmiui/core/SdkManager;->c(Landroid/content/Context;Lmiui/core/Manifest;)Z

    move-result v2

    .line 157
    if-nez v2, :cond_1

    .line 158
    const/4 v0, 0x1

    monitor-exit v1

    .line 169
    :goto_0
    return v0

    .line 162
    :cond_1
    sget-object v2, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v2, v0}, Lmiui/core/SdkManager;->d(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 164
    invoke-static {}, Lmiui/core/SdkManager;->bM()V

    .line 166
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge v0, v3, :cond_2

    .line 167
    const/4 v0, 0x3

    sput v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    .line 169
    :cond_2
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static supportUpdate(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public static update(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method
